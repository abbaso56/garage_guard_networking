package apphandler

import (
	"context"
	"garage_guard/helpers"
	appApiServicev1 "garage_guard/proto/gen/app_api_service/v1"
	appApiServicev1connect "garage_guard/proto/gen/app_api_service/v1/appApiServicev1connect"
	"garage_guard/sql/db"
	"log"
	"time"

	"connectrpc.com/connect"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"golang.org/x/crypto/bcrypt"
)

var _ appApiServicev1connect.AppApiServiceHandler = (*AppHandler)(nil)

type AppHandler struct {
	appApiServicev1connect.UnimplementedAppApiServiceHandler
	DataQuery *db.Queries
	DbConn    *pgx.Conn
}

func (appSrv *AppHandler) ConnectionCheck(ctx context.Context, req *connect.Request[appApiServicev1.ConnectionCheckRequest]) (*connect.Response[appApiServicev1.ConnectionCheckResponse], error) {
	resp := connect.NewResponse(&appApiServicev1.ConnectionCheckResponse{})
	log.Print("Connection Check Service")
	return resp, nil
}

func (appSrv *AppHandler) RegisterUser(ctx context.Context, req *connect.Request[appApiServicev1.RegisterUserRequest]) (*connect.Response[appApiServicev1.RegisterUserResponse], error) {
	log.Println("RegisterUser called")
	// Hashes password using a cost of 12
	passHash, err := bcrypt.GenerateFromPassword([]byte(req.Msg.Password), 12)
	if err != nil {
		log.Printf("%v\n", err)
		return nil, connect.NewError(connect.CodePermissionDenied, err)

	}

	id := uuid.New()

	timeNow := time.Now().UTC()

	// Creates a new row entey for the user
	_, err = appSrv.DataQuery.CreateUser(ctx, db.CreateUserParams{
		ID:        helpers.PgUuid(id),
		Username:  req.Msg.Username,
		PassHash:  string(passHash),
		CreatedAt: helpers.PgTime(timeNow),
		UpdatedAt: helpers.PgTime(timeNow),
	})
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	// Creates a new  certificate for the user
	cert, err := helpers.CreateClientCert(req.Msg.Csr, id)
	if err != nil {
		log.Printf("Error creating client cert: %v", err)
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	// Sends  respon
	resp := connect.NewResponse(&appApiServicev1.RegisterUserResponse{
		UserId:      string(id[:]),
		Username:    req.Msg.Username,
		Certificate: cert,
	})

	return resp, nil
}

func (appSrv *AppHandler) SignIn(ctx context.Context, req *connect.Request[appApiServicev1.SignInRequest]) (*connect.Response[appApiServicev1.SignInResponse], error) {
	log.Println("Sign in called")
	userEntry, err := appSrv.DataQuery.GetUserByUserName(ctx, req.Msg.Username)

	// Responds with error if something went worng when trying to fetch the user
	if err != nil {
		return nil, connect.NewError(connect.CodeUnknown, err)
	}

	// Compares password entered with the hash and responds with an error if somehting goes wrong(eg. they don't match)
	err = bcrypt.CompareHashAndPassword([]byte(userEntry.PassHash), []byte(req.Msg.Password))
	if err != nil {
		return nil, connect.NewError(connect.CodeUnknown, err)
	}

	// Creates client certificate for app
	cert, err := helpers.CreateClientCert(req.Msg.Csr, userEntry.ID.Bytes)
	if err != nil {
		log.Printf("Error creating client cert: %v", err)
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	//responds with JWT

	resp := connect.NewResponse(&appApiServicev1.SignInResponse{
		UserId:      string(userEntry.ID.Bytes[:]),
		Username:    userEntry.Username,
		Certificate: cert,
	})

	return resp, nil

}

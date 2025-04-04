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
	"github.com/jackc/pgx/v5/pgtype"
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

	//responds with error
	if err != nil {
		return nil, connect.NewError(connect.CodeUnknown, err)
	}

	// Creates Jwt for future auth
	respJwt, err := helpers.CreateAppJwt(id, req.Msg.Username)

	//responds with error
	if err != nil {

		return nil, connect.NewError(connect.CodeUnknown, err)
	}

	// Creates Jwt for future auth
	//FIX-----------------------------------------------------------

	resp := connect.NewResponse(&appApiServicev1.RegisterUserResponse{})
	//FIX-----------------------------------------------------------
	resp.Header().Add("ID", string(respJwt))
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

	// Creates Jwt for future auth
	respJwt, err := helpers.CreateAppJwt(userEntry.ID.Bytes, req.Msg.Username)
	if err != nil {

		return nil, connect.NewError(connect.CodeUnknown, err)
	}

	//responds with JWT

	resp := connect.NewResponse(&appApiServicev1.SignInResponse{})

	resp.Header().Add("jwt", string())

	return resp, nil

}

func (appSrv *AppHandler) NewGarage(ctx context.Context, req *connect.Request[appApiServicev1.NewGarageRequest]) (*connect.Response[appApiServicev1.NewGarageResponse], error) {
	log.Println("NewGarage called")
	//read data from request

	garageName := req.Msg.GarageName

	id := uuid.New()

	timeNow := time.Now().UTC()

	//get the user add from jwt passed by the auth intercepter
	jwtBody := ctx.Value("jwtBody").(helpers.UserJwtBody)
	userId := jwtBody.UserId

	//database transaction
	tx, err := appSrv.DbConn.Begin(ctx)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	defer tx.Rollback(ctx)

	q := appSrv.DataQuery.WithTx(tx)
	_, err = q.CreateGarage(ctx, db.CreateGarageParams{
		ID:         helpers.PgUuid(id),
		GarageName: garageName,
		DeviceID:   pgtype.UUID{Bytes: [16]byte{}, Valid: false},
		GestureSeq: pgtype.Text{String: "", Valid: false},
		CreatedAt:  helpers.PgTime(timeNow),
		UpdatedAt:  helpers.PgTime(timeNow),
		VideoUrl:   pgtype.Text{String: "", Valid: false},
	})
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	_, err = q.CreateGargeUserRelation(ctx, db.CreateGargeUserRelationParams{
		GarageID:  helpers.PgUuid(id),
		UserID:    helpers.PgUuid(userId),
		IsAdmin:   true,
		CreatedAt: helpers.PgTime(timeNow),
		UpdatedAt: helpers.PgTime(timeNow),
	})
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	err = tx.Commit(ctx)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	resp := connect.NewResponse(&appApiServicev1.NewGarageResponse{})

	return resp, nil

}

func (appSrv *AppHandler) GetGarages(ctx context.Context, req *connect.Request[appApiServicev1.GetGaragesRequest]) (*connect.Response[appApiServicev1.GetGaragesResponse], error) {
	log.Println("GetGarages called")
	//get the user add from jwt passed by the auth intercepter
	jwtBody := ctx.Value("jwtBody").(helpers.UserJwtBody)
	userId := jwtBody.UserId

	// gets the garage names for th user
	garageData, err := appSrv.DataQuery.GetGarageNamesByuserId(ctx, helpers.PgUuid(userId))

	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	// creates the response inputing the names into a pointer array of garage messages
	garages := make([]*appApiServicev1.Garage, len(garageData))

	for i, g := range garageData {
		garages[i].GarageName = g.GarageName
		garages[i].Id = string(g.ID.Bytes[:])
	}

	resp := connect.NewResponse(&appApiServicev1.GetGaragesResponse{
		Garages: garages,
	})
	return resp, nil
}

func (appSrv *AppHandler) GetGarageByGarageID(ctx context.Context, req *connect.Request[appApiServicev1.GetGarageByGarageIdRequest]) (*connect.Response[appApiServicev1.GetGarageByGarageIdResponse], error) {
	log.Println("GetGaragesByGarageID called")
	// Grab the garage id
	id := pgtype.UUID{
		Bytes: [16]byte([]byte(req.Msg.GetId())),
		Valid: true,
	}

	// Query the database for the garage data
	garageData, err := appSrv.DataQuery.GetGarageById(ctx, id)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	// check if these fields are null
	deviceID := ""
	if garageData.DeviceID.Valid {
		deviceID = string(garageData.DeviceID.Bytes[:])
	}

	gestureSeq := ""
	if garageData.GestureSeq.Valid {
		gestureSeq = garageData.GestureSeq.String
	}
	videoUrl := ""
	if garageData.VideoUrl.Valid {
		videoUrl = garageData.VideoUrl.String
	}

	// Create and send the response
	resp := connect.NewResponse(&appApiServicev1.GetGarageByGarageIdResponse{
		Garage: &appApiServicev1.GarageInfo{
			Id:         string(garageData.ID.Bytes[:]),
			GarageName: garageData.GarageName,
			DeviceId:   deviceID,
			GestureSeq: gestureSeq,
			VideoUrl:   videoUrl,
		},
	})

	return resp, nil

}

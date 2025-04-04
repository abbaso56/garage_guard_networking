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
)

var _ appApiServicev1connect.AuthedAppApiServiceHandler = (*AuthedAppHandler)(nil)

type AuthedAppHandler struct {
	appApiServicev1connect.UnimplementedAuthedAppApiServiceHandler
	DataQuery *db.Queries
	DbConn    *pgx.Conn
}

func (appSrv *AuthedAppHandler) NewGarage(ctx context.Context, req *connect.Request[appApiServicev1.NewGarageRequest]) (*connect.Response[appApiServicev1.NewGarageResponse], error) {
	log.Println("NewGarage called")
	//read data from request

	garageName := req.Msg.GarageName

	id := uuid.New()

	timeNow := time.Now().UTC()

	// Gets the user id
	userId := req.Msg.UserId
	pgId := pgtype.UUID{}
	err := pgId.Scan(userId)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, err)
	}

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
		UserID:    pgId,
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

func (appSrv *AuthedAppHandler) GetGarages(ctx context.Context, req *connect.Request[appApiServicev1.GetGaragesRequest]) (*connect.Response[appApiServicev1.GetGaragesResponse], error) {
	log.Println("GetGarages called")

	//get the user id from the request
	userId := req.Msg.UserId
	pgId := pgtype.UUID{}
	err := pgId.Scan(userId)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, err)
	}

	// gets the garage names for th user
	garageData, err := appSrv.DataQuery.GetGarageNamesByuserId(ctx, pgId)

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

func (appSrv *AuthedAppHandler) GetGarageByGarageID(ctx context.Context, req *connect.Request[appApiServicev1.GetGarageByGarageIdRequest]) (*connect.Response[appApiServicev1.GetGarageByGarageIdResponse], error) {
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

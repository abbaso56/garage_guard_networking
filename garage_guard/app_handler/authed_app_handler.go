package apphandler

import (
	"context"
	"errors"
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
		garages[i] = &appApiServicev1.Garage{
			GarageName: g.GarageName,
			Id:         uuid.UUID(g.ID.Bytes).String(),
		}
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
		deviceID = uuid.UUID(garageData.DeviceID.Bytes).String()
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
			Id:         uuid.UUID(garageData.ID.Bytes).String(),
			GarageName: garageData.GarageName,
			DeviceId:   deviceID,
			GestureSeq: gestureSeq,
			VideoUrl:   videoUrl,
		},
	})

	return resp, nil

}

func (appSrv *AuthedAppHandler) AddNewCar(ctx context.Context, req *connect.Request[appApiServicev1.AddNewCarRequest]) (*connect.Response[appApiServicev1.AddNewCarResponse], error) {
	log.Println("AddNewCar called")

	// Get the gargae id and the license plate from the request
	garageId := req.Msg.GarageId
	license := req.Msg.LicensePlate

	// data to pg data
	pgGarage := pgtype.UUID{}
	err := pgGarage.Scan(garageId)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, err)
	}

	if license == "" {
		return nil, connect.NewError(connect.CodeInvalidArgument, errors.New("license plate is empty"))
	}

	// create a new id for the car
	id := uuid.New()
	time.Now().UTC()

	//new entry in cars table
	_, err = appSrv.DataQuery.CreateCar(ctx, db.CreateCarParams{
		ID:           helpers.PgUuid(id),
		GarageID:     pgGarage,
		LicensePlate: license,
		CreatedAt:    helpers.PgTime(time.Now().UTC()),
		UpdatedAt:    helpers.PgTime(time.Now().UTC()),
	})
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	resp := connect.NewResponse(&appApiServicev1.AddNewCarResponse{
		Status: true,
	})

	return resp, nil

}
func (appSrv *AuthedAppHandler) UpdateGestureSeq(ctx context.Context, req *connect.Request[appApiServicev1.UpdateGestureSeqRequest]) (*connect.Response[appApiServicev1.UpdateGestureSeqResponse], error) {
	log.Println("UpdateGestureSeq called")

	// Get the garage id and the gesture sequence from the request
	garageId := req.Msg.GarageId
	gestureSeq := req.Msg.GestureSeq

	// garageId to pg UUID
	pgGarage := pgtype.UUID{}
	err := pgGarage.Scan(garageId)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, err)
	}

	if gestureSeq == "" {
		return nil, connect.NewError(connect.CodeInvalidArgument, errors.New("gesture sequence is empty"))
	}

	// gestureSeq to pg text
	pgGestureSeq := pgtype.Text{
		String: gestureSeq,
	}

	// Update gesture sequence for garage
	_, err = appSrv.DataQuery.UpdateGestureSeq(ctx, db.UpdateGestureSeqParams{
		ID:         pgGarage,
		GestureSeq: pgGestureSeq,
	})

	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	resp := connect.NewResponse(&appApiServicev1.UpdateGestureSeqResponse{
		Status: true,
	})

	return resp, nil
}

func (appSrv *AuthedAppHandler) GetCarsInGarage(ctx context.Context, req *connect.Request[appApiServicev1.GetCarsInGarageRequest]) (*connect.Response[appApiServicev1.GetCarsInGarageResponse], error) {
	log.Println("GetCarsInGarage called")

	// Get the garage id from the request
	garageId := req.Msg.GarageId

	// Id to pg UUID... you get. I've done the the same thing like a billion times now
	pgGarage := pgtype.UUID{}
	err := pgGarage.Scan(garageId)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, err)
	}

	// Check if the garage excists
	_, err = appSrv.DataQuery.GetGarageById(ctx, pgGarage)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, errors.New("garage does not exist"))
	}

	// Get the cars in the garage
	cars, err := appSrv.DataQuery.GetCarsByGarageId(ctx, pgGarage)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	// slice if sting to store car license plates
	licenses := make([]string, len(cars))

	for i, car := range cars {
		licenses[i] = car.LicensePlate
	}

	resp := connect.NewResponse(&appApiServicev1.GetCarsInGarageResponse{
		LicensePlate: licenses,
	})

	return resp, nil
}

func (appSrv *AuthedAppHandler) AddDeviceId(ctx context.Context, req *connect.Request[appApiServicev1.AddDeviceIdRequest]) (*connect.Response[appApiServicev1.AddDeviceIdResponse], error) {
	log.Println("AddDeviceId called")

	// Get the garage id and the device id
	garageId := req.Msg.GarageId
	deviceId := req.Msg.DeviceId

	// ids to pg
	pgGarage := pgtype.UUID{}
	err := pgGarage.Scan(garageId)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, err)
	}

	pgDevice := pgtype.UUID{}
	err = pgDevice.Scan(deviceId)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, err)
	}

	// Check if the garage exists

	_, err = appSrv.DataQuery.GetCarsByGarageId(ctx, pgGarage)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, errors.New("garage does not exist"))
	}
	// time for update
	timeNow := time.Now().UTC()

	// add the device id to the garage
	_, err = appSrv.DataQuery.UpdateGarageDevice(ctx, db.UpdateGarageDeviceParams{
		ID:        pgGarage,
		DeviceID:  pgDevice,
		UpdatedAt: helpers.PgTime(timeNow),
	})

	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	resp := connect.NewResponse(&appApiServicev1.AddDeviceIdResponse{
		Status: true,
	})

	return resp, nil
}

func (appSrv *AuthedAppHandler) AddGarageId(ctx context.Context, req *connect.Request[appApiServicev1.AddGarageIdRequest]) (*connect.Response[appApiServicev1.AddGarageIdResponse], error) {
	log.Println("AddGarageId called")

	// Get the garage id and the user id
	garageId := req.Msg.GarageId
	userId := req.Msg.UserId

	garageName := req.Msg.GarageName

	// pg stuff
	pgGarage := pgtype.UUID{}
	err := pgGarage.Scan(garageId)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, err)
	}

	pgUser := pgtype.UUID{}
	err = pgUser.Scan(userId)
	if err != nil {
		return nil, connect.NewError(connect.CodeInvalidArgument, err)
	}
	// Check if the garage exits (through garage id. currently allowing garage names to be whatever including duplicates)
	_, err = appSrv.DataQuery.GetGarageById(ctx, pgGarage)
	if err != pgx.ErrNoRows {
		return nil, connect.NewError(connect.CodeInvalidArgument, errors.New("garage already exists"))
	}

	// creation/update time
	time.Now().UTC()

	// Start transaction to add garage to the user
	tx, err := appSrv.DbConn.Begin(ctx)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	defer tx.Rollback(ctx)

	q := appSrv.DataQuery.WithTx(tx)

	// Create the garage entry
	_, err = q.CreateGarage(ctx, db.CreateGarageParams{
		ID:         pgGarage,
		GarageName: garageName,
		DeviceID:   pgtype.UUID{Bytes: [16]byte{}, Valid: false},
		GestureSeq: pgtype.Text{String: "", Valid: false},
		CreatedAt:  helpers.PgTime(time.Now().UTC()),
		UpdatedAt:  helpers.PgTime(time.Now().UTC()),
		VideoUrl:   pgtype.Text{String: "", Valid: false},
	})

	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	// Garage and user relation
	_, err = q.CreateGargeUserRelation(ctx, db.CreateGargeUserRelationParams{
		GarageID:  pgGarage,
		UserID:    pgUser,
		IsAdmin:   true,
		CreatedAt: helpers.PgTime(time.Now().UTC()),
		UpdatedAt: helpers.PgTime(time.Now().UTC()),
	})
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	tx.Commit(ctx)

	// transaction done now the response

	resp := connect.NewResponse(&appApiServicev1.AddGarageIdResponse{
		Status: true,
	})

	return resp, nil
}

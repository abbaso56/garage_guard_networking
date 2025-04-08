package garagehandler

import (
	"context"
	"errors"
	garageApiServicesv1 "garage_guard/proto/gen/garage_api_services/v1"
	"garage_guard/proto/gen/garage_api_services/v1/garageApiServicesv1connect"
	"garage_guard/sql/db"
	"log"

	"connectrpc.com/connect"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgtype"
)

type GEntryHandler struct {
	garageApiServicesv1connect.UnimplementedGarageEntryCheckServiceHandler
	DataQuery *db.Queries
	DbConn    *pgx.Conn
}

func (gEntryHandler *GEntryHandler) LicensePlateCheck(ctx context.Context, req *connect.Request[garageApiServicesv1.LicensePlateCheckRequest]) (*connect.Response[garageApiServicesv1.LicensePlateCheckResponse], error) {
	log.Println("LicensePlateCheck called")
	// Get garageId and deviceId from the request
	garageId := req.Msg.GarageId
	deviceId := req.Msg.DeviceId

	pgGarage := pgtype.UUID{}
	pgGarage.Scan(garageId)

	// Checks if the deviceId and garageId match the database
	garage, err := gEntryHandler.DataQuery.GetGarageById(ctx, pgGarage)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	// Get License Plates
	if uuid.UUID(garage.DeviceID.Bytes).String() != deviceId {
		return nil, connect.NewError(connect.CodeInvalidArgument, errors.New("deviceId is not valid"))
	}

	cars, err := gEntryHandler.DataQuery.GetCarsByGarageId(ctx, pgGarage)

	plates := make([]string, len(cars))

	for i, car := range cars {
		plates[i] = car.LicensePlate
	}

	resp := connect.NewResponse(&garageApiServicesv1.LicensePlateCheckResponse{
		LicensePlateString: plates,
	})

	return resp, nil
}

func (gEntryHandler *GEntryHandler) GestureSeqCheck(ctx context.Context, req *connect.Request[garageApiServicesv1.GestureSeqCheckRequest]) (*connect.Response[garageApiServicesv1.GestureSeqCheckResponse], error) {
	log.Println("GestureSeqCheck called")
	// Get garageId and deviceId from the request
	garageId := req.Msg.GarageId
	deviceId := req.Msg.DeviceId

	pgGarage := pgtype.UUID{}
	pgGarage.Scan(garageId)

	// Checks if the deviceId and garageId match the database
	garage, err := gEntryHandler.DataQuery.GetGarageById(ctx, pgGarage)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	if uuid.UUID(garage.DeviceID.Bytes).String() != deviceId {
		return nil, connect.NewError(connect.CodeInvalidArgument, errors.New("deviceId is not valid"))
	}

	// Check if the gesture sequence matches what's in the database
	resp := connect.NewResponse(&garageApiServicesv1.GestureSeqCheckResponse{
		Correct: garage.GestureSeq.String == req.Msg.GestureSeq,
	})

	return resp, nil
}

func (gEntryHandler *GEntryHandler) UserIdCheck(ctx context.Context, req *connect.Request[garageApiServicesv1.UserIdCheckRequest]) (*connect.Response[garageApiServicesv1.UserIdCheckResponse], error) {
	log.Println("UserIdCheck called")
	// Get garageId and deviceId from the request
	garageId := req.Msg.GarageId
	deviceId := req.Msg.DeviceId

	pgGarage := pgtype.UUID{}
	pgGarage.Scan(garageId)

	pgUserId := pgtype.UUID{}
	pgUserId.Scan(req.Msg.UserId)

	// Checks if the deviceId and garageId match the database
	garage, err := gEntryHandler.DataQuery.GetGarageById(ctx, pgGarage)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	if uuid.UUID(garage.DeviceID.Bytes).String() != deviceId {
		return nil, connect.NewError(connect.CodeInvalidArgument, errors.New("deviceId is not valid"))
	}

	_, err = gEntryHandler.DataQuery.GetGarageUserRelationByIDS(
		ctx,
		db.GetGarageUserRelationByIDSParams{
			GarageID: pgGarage,
			UserID:   pgUserId,
		},
	)

	if err != nil {
		// No rows therefore the answer is false
		if err == pgx.ErrNoRows {
			return connect.NewResponse(&garageApiServicesv1.UserIdCheckResponse{
				Correct: false,
			}), nil
		}
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	// the only option left is true, surely. Surely I didn't miss something
	return connect.NewResponse(&garageApiServicesv1.UserIdCheckResponse{
		Correct: true,
	}), nil
}

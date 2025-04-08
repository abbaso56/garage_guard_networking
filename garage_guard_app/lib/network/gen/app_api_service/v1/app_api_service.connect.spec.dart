//
//  Generated code. Do not modify.
//  source: app_api_service/v1/app_api_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "app_api_service.pb.dart" as app_api_servicev1app_api_service;

abstract final class AppApiService {
  /// Fully-qualified name of the AppApiService service.
  static const name = 'app_api_service.v1.AppApiService';

  /// check connection
  static const connectionCheck = connect.Spec(
    '/$name/ConnectionCheck',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.ConnectionCheckRequest.new,
    app_api_servicev1app_api_service.ConnectionCheckResponse.new,
  );

  /// Creates a new user
  static const registerUser = connect.Spec(
    '/$name/RegisterUser',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.RegisterUserRequest.new,
    app_api_servicev1app_api_service.RegisterUserResponse.new,
  );

  /// Signs in given the required credintials
  static const signIn = connect.Spec(
    '/$name/SignIn',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.SignInRequest.new,
    app_api_servicev1app_api_service.SignInResponse.new,
  );
}
abstract final class AuthedAppApiService {
  /// Fully-qualified name of the AuthedAppApiService service.
  static const name = 'app_api_service.v1.AuthedAppApiService';

  /// Adds a new garage where the user can register a device and cars
  /// The user that created the garage is registered as the admin
  static const newGarage = connect.Spec(
    '/$name/NewGarage',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.NewGarageRequest.new,
    app_api_servicev1app_api_service.NewGarageResponse.new,
  );

  /// Gets the Garages that are registered to the user
  static const getGarages = connect.Spec(
    '/$name/GetGarages',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.GetGaragesRequest.new,
    app_api_servicev1app_api_service.GetGaragesResponse.new,
  );

  /// Gets a garage through its own id
  static const getGarageByGarageId = connect.Spec(
    '/$name/GetGarageByGarageId',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.GetGarageByGarageIdRequest.new,
    app_api_servicev1app_api_service.GetGarageByGarageIdResponse.new,
  );

  /// Adds as new car to a garage
  static const addNewCar = connect.Spec(
    '/$name/AddNewCar',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.AddNewCarRequest.new,
    app_api_servicev1app_api_service.AddNewCarResponse.new,
  );

  /// Update gesture sequence for garage
  static const updateGestureSeq = connect.Spec(
    '/$name/UpdateGestureSeq',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.UpdateGestureSeqRequest.new,
    app_api_servicev1app_api_service.UpdateGestureSeqResponse.new,
  );

  /// Get cars registered to a garage
  static const getCarsInGarage = connect.Spec(
    '/$name/GetCarsInGarage',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.GetCarsInGarageRequest.new,
    app_api_servicev1app_api_service.GetCarsInGarageResponse.new,
  );

  /// Adds device id
  static const addDeviceId = connect.Spec(
    '/$name/AddDeviceId',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.AddDeviceIdRequest.new,
    app_api_servicev1app_api_service.AddDeviceIdResponse.new,
  );

  /// Add garage id
  static const addGarageId = connect.Spec(
    '/$name/AddGarageId',
    connect.StreamType.unary,
    app_api_servicev1app_api_service.AddGarageIdRequest.new,
    app_api_servicev1app_api_service.AddGarageIdResponse.new,
  );
}

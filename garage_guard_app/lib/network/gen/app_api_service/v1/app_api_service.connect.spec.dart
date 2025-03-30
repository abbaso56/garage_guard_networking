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
}

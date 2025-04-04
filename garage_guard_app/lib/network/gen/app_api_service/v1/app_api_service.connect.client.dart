//
//  Generated code. Do not modify.
//  source: app_api_service/v1/app_api_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "app_api_service.pb.dart" as app_api_servicev1app_api_service;
import "app_api_service.connect.spec.dart" as specs;

extension type AppApiServiceClient (connect.Transport _transport) {
  /// check connection
  Future<app_api_servicev1app_api_service.ConnectionCheckResponse> connectionCheck(
    app_api_servicev1app_api_service.ConnectionCheckRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AppApiService.connectionCheck,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Creates a new user
  Future<app_api_servicev1app_api_service.RegisterUserResponse> registerUser(
    app_api_servicev1app_api_service.RegisterUserRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AppApiService.registerUser,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Signs in given the required credintials
  Future<app_api_servicev1app_api_service.SignInResponse> signIn(
    app_api_servicev1app_api_service.SignInRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AppApiService.signIn,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Adds a new garage where the user can register a device and cars
  /// The user that created the garage is registered as the admin
  Future<app_api_servicev1app_api_service.NewGarageResponse> newGarage(
    app_api_servicev1app_api_service.NewGarageRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AppApiService.newGarage,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Gets the Garages that are registered to the user
  Future<app_api_servicev1app_api_service.GetGaragesResponse> getGarages(
    app_api_servicev1app_api_service.GetGaragesRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AppApiService.getGarages,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Gets a garage through its own id
  Future<app_api_servicev1app_api_service.GetGarageByGarageIdResponse> getGarageByGarageId(
    app_api_servicev1app_api_service.GetGarageByGarageIdRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AppApiService.getGarageByGarageId,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }
}

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
}
extension type AuthedAppApiServiceClient (connect.Transport _transport) {
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
      specs.AuthedAppApiService.newGarage,
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
      specs.AuthedAppApiService.getGarages,
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
      specs.AuthedAppApiService.getGarageByGarageId,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Adds as new car to a garage
  Future<app_api_servicev1app_api_service.AddNewCarResponse> addNewCar(
    app_api_servicev1app_api_service.AddNewCarRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AuthedAppApiService.addNewCar,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Update gesture sequence for garage
  Future<app_api_servicev1app_api_service.UpdateGestureSeqResponse> updateGestureSeq(
    app_api_servicev1app_api_service.UpdateGestureSeqRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AuthedAppApiService.updateGestureSeq,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Get cars registered to a garage
  Future<app_api_servicev1app_api_service.GetCarsInGarageResponse> getCarsInGarage(
    app_api_servicev1app_api_service.GetCarsInGarageRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AuthedAppApiService.getCarsInGarage,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Get device id form garage
  Future<app_api_servicev1app_api_service.GetGarageDeviceResponse> getGarageDevice(
    app_api_servicev1app_api_service.GetGarageDeviceRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AuthedAppApiService.getGarageDevice,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Adds device id
  Future<app_api_servicev1app_api_service.AddDeviceIdResponse> addDeviceId(
    app_api_servicev1app_api_service.AddDeviceIdRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AuthedAppApiService.addDeviceId,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Add garage id
  Future<app_api_servicev1app_api_service.AddGarageIdResponse> addGarageId(
    app_api_servicev1app_api_service.AddGarageIdRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.AuthedAppApiService.addGarageId,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }
}

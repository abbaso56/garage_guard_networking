//
//  Generated code. Do not modify.
//  source: app_api_service/v1/app_api_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'app_api_service.pb.dart' as $0;
import 'app_api_service.pbjson.dart';

export 'app_api_service.pb.dart';

abstract class AppApiServiceBase extends $pb.GeneratedService {
  $async.Future<$0.ConnectionCheckResponse> connectionCheck($pb.ServerContext ctx, $0.ConnectionCheckRequest request);
  $async.Future<$0.RegisterUserResponse> registerUser($pb.ServerContext ctx, $0.RegisterUserRequest request);
  $async.Future<$0.SignInResponse> signIn($pb.ServerContext ctx, $0.SignInRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'ConnectionCheck': return $0.ConnectionCheckRequest();
      case 'RegisterUser': return $0.RegisterUserRequest();
      case 'SignIn': return $0.SignInRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'ConnectionCheck': return this.connectionCheck(ctx, request as $0.ConnectionCheckRequest);
      case 'RegisterUser': return this.registerUser(ctx, request as $0.RegisterUserRequest);
      case 'SignIn': return this.signIn(ctx, request as $0.SignInRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AppApiServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AppApiServiceBase$messageJson;
}

abstract class AuthedAppApiServiceBase extends $pb.GeneratedService {
  $async.Future<$0.NewGarageResponse> newGarage($pb.ServerContext ctx, $0.NewGarageRequest request);
  $async.Future<$0.GetGaragesResponse> getGarages($pb.ServerContext ctx, $0.GetGaragesRequest request);
  $async.Future<$0.GetGarageByGarageIdResponse> getGarageByGarageId($pb.ServerContext ctx, $0.GetGarageByGarageIdRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'NewGarage': return $0.NewGarageRequest();
      case 'GetGarages': return $0.GetGaragesRequest();
      case 'GetGarageByGarageId': return $0.GetGarageByGarageIdRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'NewGarage': return this.newGarage(ctx, request as $0.NewGarageRequest);
      case 'GetGarages': return this.getGarages(ctx, request as $0.GetGaragesRequest);
      case 'GetGarageByGarageId': return this.getGarageByGarageId(ctx, request as $0.GetGarageByGarageIdRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AuthedAppApiServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AuthedAppApiServiceBase$messageJson;
}


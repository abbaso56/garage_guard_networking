//
//  Generated code. Do not modify.
//  source: app_api_service/v1/app_api_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Message is through headers(eg: rrt timestamps) and handled by intercepters
class ConnectionCheckRequest extends $pb.GeneratedMessage {
  factory ConnectionCheckRequest() => create();
  ConnectionCheckRequest._() : super();
  factory ConnectionCheckRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionCheckRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionCheckRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionCheckRequest clone() => ConnectionCheckRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionCheckRequest copyWith(void Function(ConnectionCheckRequest) updates) => super.copyWith((message) => updates(message as ConnectionCheckRequest)) as ConnectionCheckRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectionCheckRequest create() => ConnectionCheckRequest._();
  ConnectionCheckRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectionCheckRequest> createRepeated() => $pb.PbList<ConnectionCheckRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectionCheckRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionCheckRequest>(create);
  static ConnectionCheckRequest? _defaultInstance;
}

class ConnectionCheckResponse extends $pb.GeneratedMessage {
  factory ConnectionCheckResponse() => create();
  ConnectionCheckResponse._() : super();
  factory ConnectionCheckResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionCheckResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionCheckResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionCheckResponse clone() => ConnectionCheckResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionCheckResponse copyWith(void Function(ConnectionCheckResponse) updates) => super.copyWith((message) => updates(message as ConnectionCheckResponse)) as ConnectionCheckResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectionCheckResponse create() => ConnectionCheckResponse._();
  ConnectionCheckResponse createEmptyInstance() => create();
  static $pb.PbList<ConnectionCheckResponse> createRepeated() => $pb.PbList<ConnectionCheckResponse>();
  @$core.pragma('dart2js:noInline')
  static ConnectionCheckResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionCheckResponse>(create);
  static ConnectionCheckResponse? _defaultInstance;
}

/// Request sent to server includes the username and password
class RegisterUserRequest extends $pb.GeneratedMessage {
  factory RegisterUserRequest({
    $core.String? username,
    $core.String? password,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  RegisterUserRequest._() : super();
  factory RegisterUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterUserRequest clone() => RegisterUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterUserRequest copyWith(void Function(RegisterUserRequest) updates) => super.copyWith((message) => updates(message as RegisterUserRequest)) as RegisterUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterUserRequest create() => RegisterUserRequest._();
  RegisterUserRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterUserRequest> createRepeated() => $pb.PbList<RegisterUserRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterUserRequest>(create);
  static RegisterUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

/// Response from server with a jwt token for the authenticated session
class RegisterUserResponse extends $pb.GeneratedMessage {
  factory RegisterUserResponse() => create();
  RegisterUserResponse._() : super();
  factory RegisterUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterUserResponse clone() => RegisterUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterUserResponse copyWith(void Function(RegisterUserResponse) updates) => super.copyWith((message) => updates(message as RegisterUserResponse)) as RegisterUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterUserResponse create() => RegisterUserResponse._();
  RegisterUserResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterUserResponse> createRepeated() => $pb.PbList<RegisterUserResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterUserResponse>(create);
  static RegisterUserResponse? _defaultInstance;
}

/// User sends credintials for authentication
class SignInRequest extends $pb.GeneratedMessage {
  factory SignInRequest({
    $core.String? username,
    $core.String? password,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  SignInRequest._() : super();
  factory SignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignInRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInRequest clone() => SignInRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInRequest copyWith(void Function(SignInRequest) updates) => super.copyWith((message) => updates(message as SignInRequest)) as SignInRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignInRequest create() => SignInRequest._();
  SignInRequest createEmptyInstance() => create();
  static $pb.PbList<SignInRequest> createRepeated() => $pb.PbList<SignInRequest>();
  @$core.pragma('dart2js:noInline')
  static SignInRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInRequest>(create);
  static SignInRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

/// Server validates user and then sends a token for the authenticated session
class SignInResponse extends $pb.GeneratedMessage {
  factory SignInResponse() => create();
  SignInResponse._() : super();
  factory SignInResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignInResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInResponse clone() => SignInResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInResponse copyWith(void Function(SignInResponse) updates) => super.copyWith((message) => updates(message as SignInResponse)) as SignInResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignInResponse create() => SignInResponse._();
  SignInResponse createEmptyInstance() => create();
  static $pb.PbList<SignInResponse> createRepeated() => $pb.PbList<SignInResponse>();
  @$core.pragma('dart2js:noInline')
  static SignInResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInResponse>(create);
  static SignInResponse? _defaultInstance;
}

/// Creates a new garage resource with the user that created the garage being the admin
class NewGarageRequest extends $pb.GeneratedMessage {
  factory NewGarageRequest({
    $core.String? garageName,
  }) {
    final $result = create();
    if (garageName != null) {
      $result.garageName = garageName;
    }
    return $result;
  }
  NewGarageRequest._() : super();
  factory NewGarageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewGarageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewGarageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'garageName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewGarageRequest clone() => NewGarageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewGarageRequest copyWith(void Function(NewGarageRequest) updates) => super.copyWith((message) => updates(message as NewGarageRequest)) as NewGarageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewGarageRequest create() => NewGarageRequest._();
  NewGarageRequest createEmptyInstance() => create();
  static $pb.PbList<NewGarageRequest> createRepeated() => $pb.PbList<NewGarageRequest>();
  @$core.pragma('dart2js:noInline')
  static NewGarageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewGarageRequest>(create);
  static NewGarageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get garageName => $_getSZ(0);
  @$pb.TagNumber(1)
  set garageName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGarageName() => $_has(0);
  @$pb.TagNumber(1)
  void clearGarageName() => clearField(1);
}

class NewGarageResponse extends $pb.GeneratedMessage {
  factory NewGarageResponse() => create();
  NewGarageResponse._() : super();
  factory NewGarageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewGarageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewGarageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewGarageResponse clone() => NewGarageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewGarageResponse copyWith(void Function(NewGarageResponse) updates) => super.copyWith((message) => updates(message as NewGarageResponse)) as NewGarageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewGarageResponse create() => NewGarageResponse._();
  NewGarageResponse createEmptyInstance() => create();
  static $pb.PbList<NewGarageResponse> createRepeated() => $pb.PbList<NewGarageResponse>();
  @$core.pragma('dart2js:noInline')
  static NewGarageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewGarageResponse>(create);
  static NewGarageResponse? _defaultInstance;
}

class GetGaragesRequest extends $pb.GeneratedMessage {
  factory GetGaragesRequest() => create();
  GetGaragesRequest._() : super();
  factory GetGaragesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGaragesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGaragesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGaragesRequest clone() => GetGaragesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGaragesRequest copyWith(void Function(GetGaragesRequest) updates) => super.copyWith((message) => updates(message as GetGaragesRequest)) as GetGaragesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGaragesRequest create() => GetGaragesRequest._();
  GetGaragesRequest createEmptyInstance() => create();
  static $pb.PbList<GetGaragesRequest> createRepeated() => $pb.PbList<GetGaragesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetGaragesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGaragesRequest>(create);
  static GetGaragesRequest? _defaultInstance;
}

class Garage extends $pb.GeneratedMessage {
  factory Garage({
    $core.String? garageName,
    $core.String? id,
  }) {
    final $result = create();
    if (garageName != null) {
      $result.garageName = garageName;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  Garage._() : super();
  factory Garage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Garage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Garage', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'garageName')
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Garage clone() => Garage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Garage copyWith(void Function(Garage) updates) => super.copyWith((message) => updates(message as Garage)) as Garage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Garage create() => Garage._();
  Garage createEmptyInstance() => create();
  static $pb.PbList<Garage> createRepeated() => $pb.PbList<Garage>();
  @$core.pragma('dart2js:noInline')
  static Garage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Garage>(create);
  static Garage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get garageName => $_getSZ(0);
  @$pb.TagNumber(1)
  set garageName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGarageName() => $_has(0);
  @$pb.TagNumber(1)
  void clearGarageName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class GetGaragesResponse extends $pb.GeneratedMessage {
  factory GetGaragesResponse({
    $core.Iterable<Garage>? garages,
  }) {
    final $result = create();
    if (garages != null) {
      $result.garages.addAll(garages);
    }
    return $result;
  }
  GetGaragesResponse._() : super();
  factory GetGaragesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGaragesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGaragesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..pc<Garage>(1, _omitFieldNames ? '' : 'garages', $pb.PbFieldType.PM, subBuilder: Garage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGaragesResponse clone() => GetGaragesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGaragesResponse copyWith(void Function(GetGaragesResponse) updates) => super.copyWith((message) => updates(message as GetGaragesResponse)) as GetGaragesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGaragesResponse create() => GetGaragesResponse._();
  GetGaragesResponse createEmptyInstance() => create();
  static $pb.PbList<GetGaragesResponse> createRepeated() => $pb.PbList<GetGaragesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetGaragesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGaragesResponse>(create);
  static GetGaragesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Garage> get garages => $_getList(0);
}

class GetGarageByGarageIdRequest extends $pb.GeneratedMessage {
  factory GetGarageByGarageIdRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetGarageByGarageIdRequest._() : super();
  factory GetGarageByGarageIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGarageByGarageIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGarageByGarageIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGarageByGarageIdRequest clone() => GetGarageByGarageIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGarageByGarageIdRequest copyWith(void Function(GetGarageByGarageIdRequest) updates) => super.copyWith((message) => updates(message as GetGarageByGarageIdRequest)) as GetGarageByGarageIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGarageByGarageIdRequest create() => GetGarageByGarageIdRequest._();
  GetGarageByGarageIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetGarageByGarageIdRequest> createRepeated() => $pb.PbList<GetGarageByGarageIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetGarageByGarageIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGarageByGarageIdRequest>(create);
  static GetGarageByGarageIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GarageInfo extends $pb.GeneratedMessage {
  factory GarageInfo({
    $core.String? id,
    $core.String? garageName,
    $core.String? deviceId,
    $core.String? gestureSeq,
    $core.String? videoUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (garageName != null) {
      $result.garageName = garageName;
    }
    if (deviceId != null) {
      $result.deviceId = deviceId;
    }
    if (gestureSeq != null) {
      $result.gestureSeq = gestureSeq;
    }
    if (videoUrl != null) {
      $result.videoUrl = videoUrl;
    }
    return $result;
  }
  GarageInfo._() : super();
  factory GarageInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GarageInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GarageInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'garageName')
    ..aOS(3, _omitFieldNames ? '' : 'deviceId')
    ..aOS(4, _omitFieldNames ? '' : 'gestureSeq')
    ..aOS(5, _omitFieldNames ? '' : 'videoUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GarageInfo clone() => GarageInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GarageInfo copyWith(void Function(GarageInfo) updates) => super.copyWith((message) => updates(message as GarageInfo)) as GarageInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GarageInfo create() => GarageInfo._();
  GarageInfo createEmptyInstance() => create();
  static $pb.PbList<GarageInfo> createRepeated() => $pb.PbList<GarageInfo>();
  @$core.pragma('dart2js:noInline')
  static GarageInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GarageInfo>(create);
  static GarageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get garageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set garageName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGarageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGarageName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get gestureSeq => $_getSZ(3);
  @$pb.TagNumber(4)
  set gestureSeq($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGestureSeq() => $_has(3);
  @$pb.TagNumber(4)
  void clearGestureSeq() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get videoUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set videoUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVideoUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearVideoUrl() => clearField(5);
}

class GetGarageByGarageIdResponse extends $pb.GeneratedMessage {
  factory GetGarageByGarageIdResponse({
    GarageInfo? garage,
  }) {
    final $result = create();
    if (garage != null) {
      $result.garage = garage;
    }
    return $result;
  }
  GetGarageByGarageIdResponse._() : super();
  factory GetGarageByGarageIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGarageByGarageIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGarageByGarageIdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOM<GarageInfo>(1, _omitFieldNames ? '' : 'garage', subBuilder: GarageInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGarageByGarageIdResponse clone() => GetGarageByGarageIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGarageByGarageIdResponse copyWith(void Function(GetGarageByGarageIdResponse) updates) => super.copyWith((message) => updates(message as GetGarageByGarageIdResponse)) as GetGarageByGarageIdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGarageByGarageIdResponse create() => GetGarageByGarageIdResponse._();
  GetGarageByGarageIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetGarageByGarageIdResponse> createRepeated() => $pb.PbList<GetGarageByGarageIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetGarageByGarageIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGarageByGarageIdResponse>(create);
  static GetGarageByGarageIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  GarageInfo get garage => $_getN(0);
  @$pb.TagNumber(1)
  set garage(GarageInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGarage() => $_has(0);
  @$pb.TagNumber(1)
  void clearGarage() => clearField(1);
  @$pb.TagNumber(1)
  GarageInfo ensureGarage() => $_ensure(0);
}

class AppApiServiceApi {
  $pb.RpcClient _client;
  AppApiServiceApi(this._client);

  $async.Future<ConnectionCheckResponse> connectionCheck($pb.ClientContext? ctx, ConnectionCheckRequest request) =>
    _client.invoke<ConnectionCheckResponse>(ctx, 'AppApiService', 'ConnectionCheck', request, ConnectionCheckResponse())
  ;
  $async.Future<RegisterUserResponse> registerUser($pb.ClientContext? ctx, RegisterUserRequest request) =>
    _client.invoke<RegisterUserResponse>(ctx, 'AppApiService', 'RegisterUser', request, RegisterUserResponse())
  ;
  $async.Future<SignInResponse> signIn($pb.ClientContext? ctx, SignInRequest request) =>
    _client.invoke<SignInResponse>(ctx, 'AppApiService', 'SignIn', request, SignInResponse())
  ;
  $async.Future<NewGarageResponse> newGarage($pb.ClientContext? ctx, NewGarageRequest request) =>
    _client.invoke<NewGarageResponse>(ctx, 'AppApiService', 'NewGarage', request, NewGarageResponse())
  ;
  $async.Future<GetGaragesResponse> getGarages($pb.ClientContext? ctx, GetGaragesRequest request) =>
    _client.invoke<GetGaragesResponse>(ctx, 'AppApiService', 'GetGarages', request, GetGaragesResponse())
  ;
  $async.Future<GetGarageByGarageIdResponse> getGarageByGarageId($pb.ClientContext? ctx, GetGarageByGarageIdRequest request) =>
    _client.invoke<GetGarageByGarageIdResponse>(ctx, 'AppApiService', 'GetGarageByGarageId', request, GetGarageByGarageIdResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

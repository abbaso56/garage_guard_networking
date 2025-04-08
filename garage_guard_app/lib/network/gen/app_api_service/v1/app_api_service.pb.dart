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
    $core.String? csr,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (password != null) {
      $result.password = password;
    }
    if (csr != null) {
      $result.csr = csr;
    }
    return $result;
  }
  RegisterUserRequest._() : super();
  factory RegisterUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'csr')
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

  @$pb.TagNumber(3)
  $core.String get csr => $_getSZ(2);
  @$pb.TagNumber(3)
  set csr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCsr() => $_has(2);
  @$pb.TagNumber(3)
  void clearCsr() => clearField(3);
}

/// Response from server with a jwt token for the authenticated session
class RegisterUserResponse extends $pb.GeneratedMessage {
  factory RegisterUserResponse({
    $core.String? userId,
    $core.String? username,
    $core.String? certificate,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (certificate != null) {
      $result.certificate = certificate;
    }
    return $result;
  }
  RegisterUserResponse._() : super();
  factory RegisterUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'certificate')
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

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get certificate => $_getSZ(2);
  @$pb.TagNumber(3)
  set certificate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCertificate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCertificate() => clearField(3);
}

/// User sends credintials for authentication
class SignInRequest extends $pb.GeneratedMessage {
  factory SignInRequest({
    $core.String? username,
    $core.String? password,
    $core.String? csr,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (password != null) {
      $result.password = password;
    }
    if (csr != null) {
      $result.csr = csr;
    }
    return $result;
  }
  SignInRequest._() : super();
  factory SignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignInRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'csr')
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

  @$pb.TagNumber(3)
  $core.String get csr => $_getSZ(2);
  @$pb.TagNumber(3)
  set csr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCsr() => $_has(2);
  @$pb.TagNumber(3)
  void clearCsr() => clearField(3);
}

/// Server validates user and then sends a token for the authenticated session
class SignInResponse extends $pb.GeneratedMessage {
  factory SignInResponse({
    $core.String? userId,
    $core.String? username,
    $core.String? certificate,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (certificate != null) {
      $result.certificate = certificate;
    }
    return $result;
  }
  SignInResponse._() : super();
  factory SignInResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignInResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'certificate')
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

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get certificate => $_getSZ(2);
  @$pb.TagNumber(3)
  set certificate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCertificate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCertificate() => clearField(3);
}

/// Creates a new garage resource with the user that created the garage being the admin
class NewGarageRequest extends $pb.GeneratedMessage {
  factory NewGarageRequest({
    $core.String? garageName,
    $core.String? userId,
  }) {
    final $result = create();
    if (garageName != null) {
      $result.garageName = garageName;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  NewGarageRequest._() : super();
  factory NewGarageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewGarageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewGarageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'garageName')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
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

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
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
  factory GetGaragesRequest({
    $core.String? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  GetGaragesRequest._() : super();
  factory GetGaragesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGaragesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGaragesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
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

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
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

class AddNewCarRequest extends $pb.GeneratedMessage {
  factory AddNewCarRequest({
    $core.String? garageId,
    $core.String? licensePlate,
  }) {
    final $result = create();
    if (garageId != null) {
      $result.garageId = garageId;
    }
    if (licensePlate != null) {
      $result.licensePlate = licensePlate;
    }
    return $result;
  }
  AddNewCarRequest._() : super();
  factory AddNewCarRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddNewCarRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddNewCarRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'garageId')
    ..aOS(2, _omitFieldNames ? '' : 'licensePlate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddNewCarRequest clone() => AddNewCarRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddNewCarRequest copyWith(void Function(AddNewCarRequest) updates) => super.copyWith((message) => updates(message as AddNewCarRequest)) as AddNewCarRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddNewCarRequest create() => AddNewCarRequest._();
  AddNewCarRequest createEmptyInstance() => create();
  static $pb.PbList<AddNewCarRequest> createRepeated() => $pb.PbList<AddNewCarRequest>();
  @$core.pragma('dart2js:noInline')
  static AddNewCarRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddNewCarRequest>(create);
  static AddNewCarRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get garageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set garageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGarageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGarageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get licensePlate => $_getSZ(1);
  @$pb.TagNumber(2)
  set licensePlate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLicensePlate() => $_has(1);
  @$pb.TagNumber(2)
  void clearLicensePlate() => clearField(2);
}

class AddNewCarResponse extends $pb.GeneratedMessage {
  factory AddNewCarResponse({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  AddNewCarResponse._() : super();
  factory AddNewCarResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddNewCarResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddNewCarResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddNewCarResponse clone() => AddNewCarResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddNewCarResponse copyWith(void Function(AddNewCarResponse) updates) => super.copyWith((message) => updates(message as AddNewCarResponse)) as AddNewCarResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddNewCarResponse create() => AddNewCarResponse._();
  AddNewCarResponse createEmptyInstance() => create();
  static $pb.PbList<AddNewCarResponse> createRepeated() => $pb.PbList<AddNewCarResponse>();
  @$core.pragma('dart2js:noInline')
  static AddNewCarResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddNewCarResponse>(create);
  static AddNewCarResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

/// numbers representing different gestures sent as a string separated by commas
/// 1,2,3,5,6,8
class UpdateGestureSeqRequest extends $pb.GeneratedMessage {
  factory UpdateGestureSeqRequest({
    $core.String? garageId,
    $core.String? gestureSeq,
  }) {
    final $result = create();
    if (garageId != null) {
      $result.garageId = garageId;
    }
    if (gestureSeq != null) {
      $result.gestureSeq = gestureSeq;
    }
    return $result;
  }
  UpdateGestureSeqRequest._() : super();
  factory UpdateGestureSeqRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGestureSeqRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateGestureSeqRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'garageId')
    ..aOS(2, _omitFieldNames ? '' : 'gestureSeq')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGestureSeqRequest clone() => UpdateGestureSeqRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGestureSeqRequest copyWith(void Function(UpdateGestureSeqRequest) updates) => super.copyWith((message) => updates(message as UpdateGestureSeqRequest)) as UpdateGestureSeqRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateGestureSeqRequest create() => UpdateGestureSeqRequest._();
  UpdateGestureSeqRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateGestureSeqRequest> createRepeated() => $pb.PbList<UpdateGestureSeqRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateGestureSeqRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGestureSeqRequest>(create);
  static UpdateGestureSeqRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get garageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set garageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGarageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGarageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gestureSeq => $_getSZ(1);
  @$pb.TagNumber(2)
  set gestureSeq($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGestureSeq() => $_has(1);
  @$pb.TagNumber(2)
  void clearGestureSeq() => clearField(2);
}

class UpdateGestureSeqResponse extends $pb.GeneratedMessage {
  factory UpdateGestureSeqResponse({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UpdateGestureSeqResponse._() : super();
  factory UpdateGestureSeqResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGestureSeqResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateGestureSeqResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGestureSeqResponse clone() => UpdateGestureSeqResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGestureSeqResponse copyWith(void Function(UpdateGestureSeqResponse) updates) => super.copyWith((message) => updates(message as UpdateGestureSeqResponse)) as UpdateGestureSeqResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateGestureSeqResponse create() => UpdateGestureSeqResponse._();
  UpdateGestureSeqResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateGestureSeqResponse> createRepeated() => $pb.PbList<UpdateGestureSeqResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateGestureSeqResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGestureSeqResponse>(create);
  static UpdateGestureSeqResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class GetCarsInGarageRequest extends $pb.GeneratedMessage {
  factory GetCarsInGarageRequest({
    $core.String? garageId,
  }) {
    final $result = create();
    if (garageId != null) {
      $result.garageId = garageId;
    }
    return $result;
  }
  GetCarsInGarageRequest._() : super();
  factory GetCarsInGarageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCarsInGarageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCarsInGarageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'garageId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCarsInGarageRequest clone() => GetCarsInGarageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCarsInGarageRequest copyWith(void Function(GetCarsInGarageRequest) updates) => super.copyWith((message) => updates(message as GetCarsInGarageRequest)) as GetCarsInGarageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCarsInGarageRequest create() => GetCarsInGarageRequest._();
  GetCarsInGarageRequest createEmptyInstance() => create();
  static $pb.PbList<GetCarsInGarageRequest> createRepeated() => $pb.PbList<GetCarsInGarageRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCarsInGarageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCarsInGarageRequest>(create);
  static GetCarsInGarageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get garageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set garageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGarageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGarageId() => clearField(1);
}

class GetCarsInGarageResponse extends $pb.GeneratedMessage {
  factory GetCarsInGarageResponse({
    $core.Iterable<$core.String>? licensePlate,
  }) {
    final $result = create();
    if (licensePlate != null) {
      $result.licensePlate.addAll(licensePlate);
    }
    return $result;
  }
  GetCarsInGarageResponse._() : super();
  factory GetCarsInGarageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCarsInGarageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCarsInGarageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'licensePlate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCarsInGarageResponse clone() => GetCarsInGarageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCarsInGarageResponse copyWith(void Function(GetCarsInGarageResponse) updates) => super.copyWith((message) => updates(message as GetCarsInGarageResponse)) as GetCarsInGarageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCarsInGarageResponse create() => GetCarsInGarageResponse._();
  GetCarsInGarageResponse createEmptyInstance() => create();
  static $pb.PbList<GetCarsInGarageResponse> createRepeated() => $pb.PbList<GetCarsInGarageResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCarsInGarageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCarsInGarageResponse>(create);
  static GetCarsInGarageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get licensePlate => $_getList(0);
}

class AddDeviceIdRequest extends $pb.GeneratedMessage {
  factory AddDeviceIdRequest({
    $core.String? garageId,
    $core.String? deviceId,
  }) {
    final $result = create();
    if (garageId != null) {
      $result.garageId = garageId;
    }
    if (deviceId != null) {
      $result.deviceId = deviceId;
    }
    return $result;
  }
  AddDeviceIdRequest._() : super();
  factory AddDeviceIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDeviceIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDeviceIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'garageId')
    ..aOS(2, _omitFieldNames ? '' : 'deviceId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDeviceIdRequest clone() => AddDeviceIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDeviceIdRequest copyWith(void Function(AddDeviceIdRequest) updates) => super.copyWith((message) => updates(message as AddDeviceIdRequest)) as AddDeviceIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDeviceIdRequest create() => AddDeviceIdRequest._();
  AddDeviceIdRequest createEmptyInstance() => create();
  static $pb.PbList<AddDeviceIdRequest> createRepeated() => $pb.PbList<AddDeviceIdRequest>();
  @$core.pragma('dart2js:noInline')
  static AddDeviceIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDeviceIdRequest>(create);
  static AddDeviceIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get garageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set garageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGarageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGarageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceId() => clearField(2);
}

class AddDeviceIdResponse extends $pb.GeneratedMessage {
  factory AddDeviceIdResponse({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  AddDeviceIdResponse._() : super();
  factory AddDeviceIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDeviceIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDeviceIdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDeviceIdResponse clone() => AddDeviceIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDeviceIdResponse copyWith(void Function(AddDeviceIdResponse) updates) => super.copyWith((message) => updates(message as AddDeviceIdResponse)) as AddDeviceIdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDeviceIdResponse create() => AddDeviceIdResponse._();
  AddDeviceIdResponse createEmptyInstance() => create();
  static $pb.PbList<AddDeviceIdResponse> createRepeated() => $pb.PbList<AddDeviceIdResponse>();
  @$core.pragma('dart2js:noInline')
  static AddDeviceIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDeviceIdResponse>(create);
  static AddDeviceIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class AddGarageIdRequest extends $pb.GeneratedMessage {
  factory AddGarageIdRequest({
    $core.String? userId,
    $core.String? garageId,
    $core.String? garageName,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (garageId != null) {
      $result.garageId = garageId;
    }
    if (garageName != null) {
      $result.garageName = garageName;
    }
    return $result;
  }
  AddGarageIdRequest._() : super();
  factory AddGarageIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddGarageIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddGarageIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'garageId')
    ..aOS(3, _omitFieldNames ? '' : 'garageName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddGarageIdRequest clone() => AddGarageIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddGarageIdRequest copyWith(void Function(AddGarageIdRequest) updates) => super.copyWith((message) => updates(message as AddGarageIdRequest)) as AddGarageIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddGarageIdRequest create() => AddGarageIdRequest._();
  AddGarageIdRequest createEmptyInstance() => create();
  static $pb.PbList<AddGarageIdRequest> createRepeated() => $pb.PbList<AddGarageIdRequest>();
  @$core.pragma('dart2js:noInline')
  static AddGarageIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddGarageIdRequest>(create);
  static AddGarageIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get garageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set garageId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGarageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGarageId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get garageName => $_getSZ(2);
  @$pb.TagNumber(3)
  set garageName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGarageName() => $_has(2);
  @$pb.TagNumber(3)
  void clearGarageName() => clearField(3);
}

class AddGarageIdResponse extends $pb.GeneratedMessage {
  factory AddGarageIdResponse({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  AddGarageIdResponse._() : super();
  factory AddGarageIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddGarageIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddGarageIdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app_api_service.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddGarageIdResponse clone() => AddGarageIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddGarageIdResponse copyWith(void Function(AddGarageIdResponse) updates) => super.copyWith((message) => updates(message as AddGarageIdResponse)) as AddGarageIdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddGarageIdResponse create() => AddGarageIdResponse._();
  AddGarageIdResponse createEmptyInstance() => create();
  static $pb.PbList<AddGarageIdResponse> createRepeated() => $pb.PbList<AddGarageIdResponse>();
  @$core.pragma('dart2js:noInline')
  static AddGarageIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddGarageIdResponse>(create);
  static AddGarageIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
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
}

class AuthedAppApiServiceApi {
  $pb.RpcClient _client;
  AuthedAppApiServiceApi(this._client);

  $async.Future<NewGarageResponse> newGarage($pb.ClientContext? ctx, NewGarageRequest request) =>
    _client.invoke<NewGarageResponse>(ctx, 'AuthedAppApiService', 'NewGarage', request, NewGarageResponse())
  ;
  $async.Future<GetGaragesResponse> getGarages($pb.ClientContext? ctx, GetGaragesRequest request) =>
    _client.invoke<GetGaragesResponse>(ctx, 'AuthedAppApiService', 'GetGarages', request, GetGaragesResponse())
  ;
  $async.Future<GetGarageByGarageIdResponse> getGarageByGarageId($pb.ClientContext? ctx, GetGarageByGarageIdRequest request) =>
    _client.invoke<GetGarageByGarageIdResponse>(ctx, 'AuthedAppApiService', 'GetGarageByGarageId', request, GetGarageByGarageIdResponse())
  ;
  $async.Future<AddNewCarResponse> addNewCar($pb.ClientContext? ctx, AddNewCarRequest request) =>
    _client.invoke<AddNewCarResponse>(ctx, 'AuthedAppApiService', 'AddNewCar', request, AddNewCarResponse())
  ;
  $async.Future<UpdateGestureSeqResponse> updateGestureSeq($pb.ClientContext? ctx, UpdateGestureSeqRequest request) =>
    _client.invoke<UpdateGestureSeqResponse>(ctx, 'AuthedAppApiService', 'UpdateGestureSeq', request, UpdateGestureSeqResponse())
  ;
  $async.Future<GetCarsInGarageResponse> getCarsInGarage($pb.ClientContext? ctx, GetCarsInGarageRequest request) =>
    _client.invoke<GetCarsInGarageResponse>(ctx, 'AuthedAppApiService', 'GetCarsInGarage', request, GetCarsInGarageResponse())
  ;
  $async.Future<AddDeviceIdResponse> addDeviceId($pb.ClientContext? ctx, AddDeviceIdRequest request) =>
    _client.invoke<AddDeviceIdResponse>(ctx, 'AuthedAppApiService', 'AddDeviceId', request, AddDeviceIdResponse())
  ;
  $async.Future<AddGarageIdResponse> addGarageId($pb.ClientContext? ctx, AddGarageIdRequest request) =>
    _client.invoke<AddGarageIdResponse>(ctx, 'AuthedAppApiService', 'AddGarageId', request, AddGarageIdResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

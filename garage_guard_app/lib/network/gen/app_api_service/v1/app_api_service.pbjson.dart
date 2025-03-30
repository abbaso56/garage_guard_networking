//
//  Generated code. Do not modify.
//  source: app_api_service/v1/app_api_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use connectionCheckRequestDescriptor instead')
const ConnectionCheckRequest$json = {
  '1': 'ConnectionCheckRequest',
};

/// Descriptor for `ConnectionCheckRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionCheckRequestDescriptor = $convert.base64Decode(
    'ChZDb25uZWN0aW9uQ2hlY2tSZXF1ZXN0');

@$core.Deprecated('Use connectionCheckResponseDescriptor instead')
const ConnectionCheckResponse$json = {
  '1': 'ConnectionCheckResponse',
};

/// Descriptor for `ConnectionCheckResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionCheckResponseDescriptor = $convert.base64Decode(
    'ChdDb25uZWN0aW9uQ2hlY2tSZXNwb25zZQ==');

@$core.Deprecated('Use registerUserRequestDescriptor instead')
const RegisterUserRequest$json = {
  '1': 'RegisterUserRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `RegisterUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerUserRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RlclVzZXJSZXF1ZXN0EhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIaCghwYX'
    'Nzd29yZBgCIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use registerUserResponseDescriptor instead')
const RegisterUserResponse$json = {
  '1': 'RegisterUserResponse',
  '2': [
    {'1': 'jwt', '3': 1, '4': 1, '5': 12, '10': 'jwt'},
  ],
};

/// Descriptor for `RegisterUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerUserResponseDescriptor = $convert.base64Decode(
    'ChRSZWdpc3RlclVzZXJSZXNwb25zZRIQCgNqd3QYASABKAxSA2p3dA==');

@$core.Deprecated('Use signInRequestDescriptor instead')
const SignInRequest$json = {
  '1': 'SignInRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode(
    'Cg1TaWduSW5SZXF1ZXN0EhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZB'
    'gCIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use signInResponseDescriptor instead')
const SignInResponse$json = {
  '1': 'SignInResponse',
  '2': [
    {'1': 'jwt', '3': 1, '4': 1, '5': 12, '10': 'jwt'},
  ],
};

/// Descriptor for `SignInResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInResponseDescriptor = $convert.base64Decode(
    'Cg5TaWduSW5SZXNwb25zZRIQCgNqd3QYASABKAxSA2p3dA==');

@$core.Deprecated('Use newGarageRequestDescriptor instead')
const NewGarageRequest$json = {
  '1': 'NewGarageRequest',
  '2': [
    {'1': 'garage_name', '3': 1, '4': 1, '5': 9, '10': 'garageName'},
  ],
};

/// Descriptor for `NewGarageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newGarageRequestDescriptor = $convert.base64Decode(
    'ChBOZXdHYXJhZ2VSZXF1ZXN0Eh8KC2dhcmFnZV9uYW1lGAEgASgJUgpnYXJhZ2VOYW1l');

@$core.Deprecated('Use newGarageResponseDescriptor instead')
const NewGarageResponse$json = {
  '1': 'NewGarageResponse',
};

/// Descriptor for `NewGarageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newGarageResponseDescriptor = $convert.base64Decode(
    'ChFOZXdHYXJhZ2VSZXNwb25zZQ==');

@$core.Deprecated('Use getGaragesRequestDescriptor instead')
const GetGaragesRequest$json = {
  '1': 'GetGaragesRequest',
};

/// Descriptor for `GetGaragesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGaragesRequestDescriptor = $convert.base64Decode(
    'ChFHZXRHYXJhZ2VzUmVxdWVzdA==');

@$core.Deprecated('Use garageDescriptor instead')
const Garage$json = {
  '1': 'Garage',
  '2': [
    {'1': 'garage_name', '3': 1, '4': 1, '5': 9, '10': 'garageName'},
  ],
};

/// Descriptor for `Garage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List garageDescriptor = $convert.base64Decode(
    'CgZHYXJhZ2USHwoLZ2FyYWdlX25hbWUYASABKAlSCmdhcmFnZU5hbWU=');

@$core.Deprecated('Use getGaragesResponseDescriptor instead')
const GetGaragesResponse$json = {
  '1': 'GetGaragesResponse',
  '2': [
    {'1': 'garages', '3': 1, '4': 3, '5': 11, '6': '.app_api_service.v1.Garage', '10': 'garages'},
  ],
};

/// Descriptor for `GetGaragesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGaragesResponseDescriptor = $convert.base64Decode(
    'ChJHZXRHYXJhZ2VzUmVzcG9uc2USNAoHZ2FyYWdlcxgBIAMoCzIaLmFwcF9hcGlfc2VydmljZS'
    '52MS5HYXJhZ2VSB2dhcmFnZXM=');

const $core.Map<$core.String, $core.dynamic> AppApiServiceBase$json = {
  '1': 'AppApiService',
  '2': [
    {'1': 'ConnectionCheck', '2': '.app_api_service.v1.ConnectionCheckRequest', '3': '.app_api_service.v1.ConnectionCheckResponse', '4': {}},
    {'1': 'RegisterUser', '2': '.app_api_service.v1.RegisterUserRequest', '3': '.app_api_service.v1.RegisterUserResponse', '4': {}},
    {'1': 'SignIn', '2': '.app_api_service.v1.SignInRequest', '3': '.app_api_service.v1.SignInResponse', '4': {}},
    {'1': 'NewGarage', '2': '.app_api_service.v1.NewGarageRequest', '3': '.app_api_service.v1.NewGarageResponse', '4': {}},
    {'1': 'GetGarages', '2': '.app_api_service.v1.GetGaragesRequest', '3': '.app_api_service.v1.GetGaragesResponse', '4': {}},
  ],
};

@$core.Deprecated('Use appApiServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> AppApiServiceBase$messageJson = {
  '.app_api_service.v1.ConnectionCheckRequest': ConnectionCheckRequest$json,
  '.app_api_service.v1.ConnectionCheckResponse': ConnectionCheckResponse$json,
  '.app_api_service.v1.RegisterUserRequest': RegisterUserRequest$json,
  '.app_api_service.v1.RegisterUserResponse': RegisterUserResponse$json,
  '.app_api_service.v1.SignInRequest': SignInRequest$json,
  '.app_api_service.v1.SignInResponse': SignInResponse$json,
  '.app_api_service.v1.NewGarageRequest': NewGarageRequest$json,
  '.app_api_service.v1.NewGarageResponse': NewGarageResponse$json,
  '.app_api_service.v1.GetGaragesRequest': GetGaragesRequest$json,
  '.app_api_service.v1.GetGaragesResponse': GetGaragesResponse$json,
  '.app_api_service.v1.Garage': Garage$json,
};

/// Descriptor for `AppApiService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List appApiServiceDescriptor = $convert.base64Decode(
    'Cg1BcHBBcGlTZXJ2aWNlEmwKD0Nvbm5lY3Rpb25DaGVjaxIqLmFwcF9hcGlfc2VydmljZS52MS'
    '5Db25uZWN0aW9uQ2hlY2tSZXF1ZXN0GisuYXBwX2FwaV9zZXJ2aWNlLnYxLkNvbm5lY3Rpb25D'
    'aGVja1Jlc3BvbnNlIgASYwoMUmVnaXN0ZXJVc2VyEicuYXBwX2FwaV9zZXJ2aWNlLnYxLlJlZ2'
    'lzdGVyVXNlclJlcXVlc3QaKC5hcHBfYXBpX3NlcnZpY2UudjEuUmVnaXN0ZXJVc2VyUmVzcG9u'
    'c2UiABJRCgZTaWduSW4SIS5hcHBfYXBpX3NlcnZpY2UudjEuU2lnbkluUmVxdWVzdBoiLmFwcF'
    '9hcGlfc2VydmljZS52MS5TaWduSW5SZXNwb25zZSIAEloKCU5ld0dhcmFnZRIkLmFwcF9hcGlf'
    'c2VydmljZS52MS5OZXdHYXJhZ2VSZXF1ZXN0GiUuYXBwX2FwaV9zZXJ2aWNlLnYxLk5ld0dhcm'
    'FnZVJlc3BvbnNlIgASXQoKR2V0R2FyYWdlcxIlLmFwcF9hcGlfc2VydmljZS52MS5HZXRHYXJh'
    'Z2VzUmVxdWVzdBomLmFwcF9hcGlfc2VydmljZS52MS5HZXRHYXJhZ2VzUmVzcG9uc2UiAA==');


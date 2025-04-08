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
    {'1': 'csr', '3': 3, '4': 1, '5': 9, '10': 'csr'},
  ],
};

/// Descriptor for `RegisterUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerUserRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RlclVzZXJSZXF1ZXN0EhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIaCghwYX'
    'Nzd29yZBgCIAEoCVIIcGFzc3dvcmQSEAoDY3NyGAMgASgJUgNjc3I=');

@$core.Deprecated('Use registerUserResponseDescriptor instead')
const RegisterUserResponse$json = {
  '1': 'RegisterUserResponse',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'certificate', '3': 3, '4': 1, '5': 9, '10': 'certificate'},
  ],
};

/// Descriptor for `RegisterUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerUserResponseDescriptor = $convert.base64Decode(
    'ChRSZWdpc3RlclVzZXJSZXNwb25zZRIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSGgoIdXNlcm'
    '5hbWUYAiABKAlSCHVzZXJuYW1lEiAKC2NlcnRpZmljYXRlGAMgASgJUgtjZXJ0aWZpY2F0ZQ==');

@$core.Deprecated('Use signInRequestDescriptor instead')
const SignInRequest$json = {
  '1': 'SignInRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'csr', '3': 3, '4': 1, '5': 9, '10': 'csr'},
  ],
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode(
    'Cg1TaWduSW5SZXF1ZXN0EhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZB'
    'gCIAEoCVIIcGFzc3dvcmQSEAoDY3NyGAMgASgJUgNjc3I=');

@$core.Deprecated('Use signInResponseDescriptor instead')
const SignInResponse$json = {
  '1': 'SignInResponse',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'certificate', '3': 3, '4': 1, '5': 9, '10': 'certificate'},
  ],
};

/// Descriptor for `SignInResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInResponseDescriptor = $convert.base64Decode(
    'Cg5TaWduSW5SZXNwb25zZRIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSGgoIdXNlcm5hbWUYAi'
    'ABKAlSCHVzZXJuYW1lEiAKC2NlcnRpZmljYXRlGAMgASgJUgtjZXJ0aWZpY2F0ZQ==');

@$core.Deprecated('Use newGarageRequestDescriptor instead')
const NewGarageRequest$json = {
  '1': 'NewGarageRequest',
  '2': [
    {'1': 'garage_name', '3': 1, '4': 1, '5': 9, '10': 'garageName'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `NewGarageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newGarageRequestDescriptor = $convert.base64Decode(
    'ChBOZXdHYXJhZ2VSZXF1ZXN0Eh8KC2dhcmFnZV9uYW1lGAEgASgJUgpnYXJhZ2VOYW1lEhcKB3'
    'VzZXJfaWQYAiABKAlSBnVzZXJJZA==');

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
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetGaragesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGaragesRequestDescriptor = $convert.base64Decode(
    'ChFHZXRHYXJhZ2VzUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQ=');

@$core.Deprecated('Use garageDescriptor instead')
const Garage$json = {
  '1': 'Garage',
  '2': [
    {'1': 'garage_name', '3': 1, '4': 1, '5': 9, '10': 'garageName'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `Garage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List garageDescriptor = $convert.base64Decode(
    'CgZHYXJhZ2USHwoLZ2FyYWdlX25hbWUYASABKAlSCmdhcmFnZU5hbWUSDgoCaWQYAiABKAlSAm'
    'lk');

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

@$core.Deprecated('Use getGarageByGarageIdRequestDescriptor instead')
const GetGarageByGarageIdRequest$json = {
  '1': 'GetGarageByGarageIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetGarageByGarageIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGarageByGarageIdRequestDescriptor = $convert.base64Decode(
    'ChpHZXRHYXJhZ2VCeUdhcmFnZUlkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use garageInfoDescriptor instead')
const GarageInfo$json = {
  '1': 'GarageInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'garage_name', '3': 2, '4': 1, '5': 9, '10': 'garageName'},
    {'1': 'device_id', '3': 3, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'gesture_seq', '3': 4, '4': 1, '5': 9, '10': 'gestureSeq'},
    {'1': 'video_url', '3': 5, '4': 1, '5': 9, '10': 'videoUrl'},
  ],
};

/// Descriptor for `GarageInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List garageInfoDescriptor = $convert.base64Decode(
    'CgpHYXJhZ2VJbmZvEg4KAmlkGAEgASgJUgJpZBIfCgtnYXJhZ2VfbmFtZRgCIAEoCVIKZ2FyYW'
    'dlTmFtZRIbCglkZXZpY2VfaWQYAyABKAlSCGRldmljZUlkEh8KC2dlc3R1cmVfc2VxGAQgASgJ'
    'UgpnZXN0dXJlU2VxEhsKCXZpZGVvX3VybBgFIAEoCVIIdmlkZW9Vcmw=');

@$core.Deprecated('Use getGarageByGarageIdResponseDescriptor instead')
const GetGarageByGarageIdResponse$json = {
  '1': 'GetGarageByGarageIdResponse',
  '2': [
    {'1': 'garage', '3': 1, '4': 1, '5': 11, '6': '.app_api_service.v1.GarageInfo', '10': 'garage'},
  ],
};

/// Descriptor for `GetGarageByGarageIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGarageByGarageIdResponseDescriptor = $convert.base64Decode(
    'ChtHZXRHYXJhZ2VCeUdhcmFnZUlkUmVzcG9uc2USNgoGZ2FyYWdlGAEgASgLMh4uYXBwX2FwaV'
    '9zZXJ2aWNlLnYxLkdhcmFnZUluZm9SBmdhcmFnZQ==');

@$core.Deprecated('Use addNewCarRequestDescriptor instead')
const AddNewCarRequest$json = {
  '1': 'AddNewCarRequest',
  '2': [
    {'1': 'garage_id', '3': 1, '4': 1, '5': 9, '10': 'garageId'},
    {'1': 'license_plate', '3': 2, '4': 1, '5': 9, '10': 'licensePlate'},
  ],
};

/// Descriptor for `AddNewCarRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addNewCarRequestDescriptor = $convert.base64Decode(
    'ChBBZGROZXdDYXJSZXF1ZXN0EhsKCWdhcmFnZV9pZBgBIAEoCVIIZ2FyYWdlSWQSIwoNbGljZW'
    '5zZV9wbGF0ZRgCIAEoCVIMbGljZW5zZVBsYXRl');

@$core.Deprecated('Use addNewCarResponseDescriptor instead')
const AddNewCarResponse$json = {
  '1': 'AddNewCarResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `AddNewCarResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addNewCarResponseDescriptor = $convert.base64Decode(
    'ChFBZGROZXdDYXJSZXNwb25zZRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use updateGestureSeqRequestDescriptor instead')
const UpdateGestureSeqRequest$json = {
  '1': 'UpdateGestureSeqRequest',
  '2': [
    {'1': 'garage_id', '3': 1, '4': 1, '5': 9, '10': 'garageId'},
    {'1': 'gesture_seq', '3': 2, '4': 1, '5': 9, '10': 'gestureSeq'},
  ],
};

/// Descriptor for `UpdateGestureSeqRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGestureSeqRequestDescriptor = $convert.base64Decode(
    'ChdVcGRhdGVHZXN0dXJlU2VxUmVxdWVzdBIbCglnYXJhZ2VfaWQYASABKAlSCGdhcmFnZUlkEh'
    '8KC2dlc3R1cmVfc2VxGAIgASgJUgpnZXN0dXJlU2Vx');

@$core.Deprecated('Use updateGestureSeqResponseDescriptor instead')
const UpdateGestureSeqResponse$json = {
  '1': 'UpdateGestureSeqResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `UpdateGestureSeqResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGestureSeqResponseDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVHZXN0dXJlU2VxUmVzcG9uc2USFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

@$core.Deprecated('Use getCarsInGarageRequestDescriptor instead')
const GetCarsInGarageRequest$json = {
  '1': 'GetCarsInGarageRequest',
  '2': [
    {'1': 'garage_id', '3': 1, '4': 1, '5': 9, '10': 'garageId'},
  ],
};

/// Descriptor for `GetCarsInGarageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCarsInGarageRequestDescriptor = $convert.base64Decode(
    'ChZHZXRDYXJzSW5HYXJhZ2VSZXF1ZXN0EhsKCWdhcmFnZV9pZBgBIAEoCVIIZ2FyYWdlSWQ=');

@$core.Deprecated('Use getCarsInGarageResponseDescriptor instead')
const GetCarsInGarageResponse$json = {
  '1': 'GetCarsInGarageResponse',
  '2': [
    {'1': 'license_plate', '3': 1, '4': 3, '5': 9, '10': 'licensePlate'},
  ],
};

/// Descriptor for `GetCarsInGarageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCarsInGarageResponseDescriptor = $convert.base64Decode(
    'ChdHZXRDYXJzSW5HYXJhZ2VSZXNwb25zZRIjCg1saWNlbnNlX3BsYXRlGAEgAygJUgxsaWNlbn'
    'NlUGxhdGU=');

@$core.Deprecated('Use addDeviceIdRequestDescriptor instead')
const AddDeviceIdRequest$json = {
  '1': 'AddDeviceIdRequest',
  '2': [
    {'1': 'garage_id', '3': 1, '4': 1, '5': 9, '10': 'garageId'},
    {'1': 'device_id', '3': 2, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `AddDeviceIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDeviceIdRequestDescriptor = $convert.base64Decode(
    'ChJBZGREZXZpY2VJZFJlcXVlc3QSGwoJZ2FyYWdlX2lkGAEgASgJUghnYXJhZ2VJZBIbCglkZX'
    'ZpY2VfaWQYAiABKAlSCGRldmljZUlk');

@$core.Deprecated('Use addDeviceIdResponseDescriptor instead')
const AddDeviceIdResponse$json = {
  '1': 'AddDeviceIdResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `AddDeviceIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDeviceIdResponseDescriptor = $convert.base64Decode(
    'ChNBZGREZXZpY2VJZFJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');

@$core.Deprecated('Use addGarageIdRequestDescriptor instead')
const AddGarageIdRequest$json = {
  '1': 'AddGarageIdRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'garage_id', '3': 2, '4': 1, '5': 9, '10': 'garageId'},
    {'1': 'garage_name', '3': 3, '4': 1, '5': 9, '10': 'garageName'},
  ],
};

/// Descriptor for `AddGarageIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addGarageIdRequestDescriptor = $convert.base64Decode(
    'ChJBZGRHYXJhZ2VJZFJlcXVlc3QSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEhsKCWdhcmFnZV'
    '9pZBgCIAEoCVIIZ2FyYWdlSWQSHwoLZ2FyYWdlX25hbWUYAyABKAlSCmdhcmFnZU5hbWU=');

@$core.Deprecated('Use addGarageIdResponseDescriptor instead')
const AddGarageIdResponse$json = {
  '1': 'AddGarageIdResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `AddGarageIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addGarageIdResponseDescriptor = $convert.base64Decode(
    'ChNBZGRHYXJhZ2VJZFJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');

const $core.Map<$core.String, $core.dynamic> AppApiServiceBase$json = {
  '1': 'AppApiService',
  '2': [
    {'1': 'ConnectionCheck', '2': '.app_api_service.v1.ConnectionCheckRequest', '3': '.app_api_service.v1.ConnectionCheckResponse', '4': {}},
    {'1': 'RegisterUser', '2': '.app_api_service.v1.RegisterUserRequest', '3': '.app_api_service.v1.RegisterUserResponse', '4': {}},
    {'1': 'SignIn', '2': '.app_api_service.v1.SignInRequest', '3': '.app_api_service.v1.SignInResponse', '4': {}},
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
};

/// Descriptor for `AppApiService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List appApiServiceDescriptor = $convert.base64Decode(
    'Cg1BcHBBcGlTZXJ2aWNlEmwKD0Nvbm5lY3Rpb25DaGVjaxIqLmFwcF9hcGlfc2VydmljZS52MS'
    '5Db25uZWN0aW9uQ2hlY2tSZXF1ZXN0GisuYXBwX2FwaV9zZXJ2aWNlLnYxLkNvbm5lY3Rpb25D'
    'aGVja1Jlc3BvbnNlIgASYwoMUmVnaXN0ZXJVc2VyEicuYXBwX2FwaV9zZXJ2aWNlLnYxLlJlZ2'
    'lzdGVyVXNlclJlcXVlc3QaKC5hcHBfYXBpX3NlcnZpY2UudjEuUmVnaXN0ZXJVc2VyUmVzcG9u'
    'c2UiABJRCgZTaWduSW4SIS5hcHBfYXBpX3NlcnZpY2UudjEuU2lnbkluUmVxdWVzdBoiLmFwcF'
    '9hcGlfc2VydmljZS52MS5TaWduSW5SZXNwb25zZSIA');

const $core.Map<$core.String, $core.dynamic> AuthedAppApiServiceBase$json = {
  '1': 'AuthedAppApiService',
  '2': [
    {'1': 'NewGarage', '2': '.app_api_service.v1.NewGarageRequest', '3': '.app_api_service.v1.NewGarageResponse', '4': {}},
    {'1': 'GetGarages', '2': '.app_api_service.v1.GetGaragesRequest', '3': '.app_api_service.v1.GetGaragesResponse', '4': {}},
    {'1': 'GetGarageByGarageId', '2': '.app_api_service.v1.GetGarageByGarageIdRequest', '3': '.app_api_service.v1.GetGarageByGarageIdResponse', '4': {}},
    {'1': 'AddNewCar', '2': '.app_api_service.v1.AddNewCarRequest', '3': '.app_api_service.v1.AddNewCarResponse', '4': {}},
    {'1': 'UpdateGestureSeq', '2': '.app_api_service.v1.UpdateGestureSeqRequest', '3': '.app_api_service.v1.UpdateGestureSeqResponse', '4': {}},
    {'1': 'GetCarsInGarage', '2': '.app_api_service.v1.GetCarsInGarageRequest', '3': '.app_api_service.v1.GetCarsInGarageResponse', '4': {}},
    {'1': 'AddDeviceId', '2': '.app_api_service.v1.AddDeviceIdRequest', '3': '.app_api_service.v1.AddDeviceIdResponse', '4': {}},
    {'1': 'AddGarageId', '2': '.app_api_service.v1.AddGarageIdRequest', '3': '.app_api_service.v1.AddGarageIdResponse', '4': {}},
  ],
};

@$core.Deprecated('Use authedAppApiServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> AuthedAppApiServiceBase$messageJson = {
  '.app_api_service.v1.NewGarageRequest': NewGarageRequest$json,
  '.app_api_service.v1.NewGarageResponse': NewGarageResponse$json,
  '.app_api_service.v1.GetGaragesRequest': GetGaragesRequest$json,
  '.app_api_service.v1.GetGaragesResponse': GetGaragesResponse$json,
  '.app_api_service.v1.Garage': Garage$json,
  '.app_api_service.v1.GetGarageByGarageIdRequest': GetGarageByGarageIdRequest$json,
  '.app_api_service.v1.GetGarageByGarageIdResponse': GetGarageByGarageIdResponse$json,
  '.app_api_service.v1.GarageInfo': GarageInfo$json,
  '.app_api_service.v1.AddNewCarRequest': AddNewCarRequest$json,
  '.app_api_service.v1.AddNewCarResponse': AddNewCarResponse$json,
  '.app_api_service.v1.UpdateGestureSeqRequest': UpdateGestureSeqRequest$json,
  '.app_api_service.v1.UpdateGestureSeqResponse': UpdateGestureSeqResponse$json,
  '.app_api_service.v1.GetCarsInGarageRequest': GetCarsInGarageRequest$json,
  '.app_api_service.v1.GetCarsInGarageResponse': GetCarsInGarageResponse$json,
  '.app_api_service.v1.AddDeviceIdRequest': AddDeviceIdRequest$json,
  '.app_api_service.v1.AddDeviceIdResponse': AddDeviceIdResponse$json,
  '.app_api_service.v1.AddGarageIdRequest': AddGarageIdRequest$json,
  '.app_api_service.v1.AddGarageIdResponse': AddGarageIdResponse$json,
};

/// Descriptor for `AuthedAppApiService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List authedAppApiServiceDescriptor = $convert.base64Decode(
    'ChNBdXRoZWRBcHBBcGlTZXJ2aWNlEloKCU5ld0dhcmFnZRIkLmFwcF9hcGlfc2VydmljZS52MS'
    '5OZXdHYXJhZ2VSZXF1ZXN0GiUuYXBwX2FwaV9zZXJ2aWNlLnYxLk5ld0dhcmFnZVJlc3BvbnNl'
    'IgASXQoKR2V0R2FyYWdlcxIlLmFwcF9hcGlfc2VydmljZS52MS5HZXRHYXJhZ2VzUmVxdWVzdB'
    'omLmFwcF9hcGlfc2VydmljZS52MS5HZXRHYXJhZ2VzUmVzcG9uc2UiABJ4ChNHZXRHYXJhZ2VC'
    'eUdhcmFnZUlkEi4uYXBwX2FwaV9zZXJ2aWNlLnYxLkdldEdhcmFnZUJ5R2FyYWdlSWRSZXF1ZX'
    'N0Gi8uYXBwX2FwaV9zZXJ2aWNlLnYxLkdldEdhcmFnZUJ5R2FyYWdlSWRSZXNwb25zZSIAEloK'
    'CUFkZE5ld0NhchIkLmFwcF9hcGlfc2VydmljZS52MS5BZGROZXdDYXJSZXF1ZXN0GiUuYXBwX2'
    'FwaV9zZXJ2aWNlLnYxLkFkZE5ld0NhclJlc3BvbnNlIgASbwoQVXBkYXRlR2VzdHVyZVNlcRIr'
    'LmFwcF9hcGlfc2VydmljZS52MS5VcGRhdGVHZXN0dXJlU2VxUmVxdWVzdBosLmFwcF9hcGlfc2'
    'VydmljZS52MS5VcGRhdGVHZXN0dXJlU2VxUmVzcG9uc2UiABJsCg9HZXRDYXJzSW5HYXJhZ2US'
    'Ki5hcHBfYXBpX3NlcnZpY2UudjEuR2V0Q2Fyc0luR2FyYWdlUmVxdWVzdBorLmFwcF9hcGlfc2'
    'VydmljZS52MS5HZXRDYXJzSW5HYXJhZ2VSZXNwb25zZSIAEmAKC0FkZERldmljZUlkEiYuYXBw'
    'X2FwaV9zZXJ2aWNlLnYxLkFkZERldmljZUlkUmVxdWVzdBonLmFwcF9hcGlfc2VydmljZS52MS'
    '5BZGREZXZpY2VJZFJlc3BvbnNlIgASYAoLQWRkR2FyYWdlSWQSJi5hcHBfYXBpX3NlcnZpY2Uu'
    'djEuQWRkR2FyYWdlSWRSZXF1ZXN0GicuYXBwX2FwaV9zZXJ2aWNlLnYxLkFkZEdhcmFnZUlkUm'
    'VzcG9uc2UiAA==');


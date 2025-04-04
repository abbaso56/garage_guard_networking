import 'dart:developer';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:connectrpc/connect.dart';
import 'package:connectrpc/http2.dart';
import 'package:connectrpc/protobuf.dart';
import 'package:equatable/equatable.dart';
import 'package:connectrpc/protocol/grpc.dart' as protocol;
import 'package:flutter/material.dart';
import 'package:garage_guard_app/network/gen/app_api_service/v1/app_api_service.connect.client.dart';
import 'package:garage_guard_app/network/gen/app_api_service/v1/app_api_service.connect.spec.dart';
import 'package:garage_guard_app/network/gen/app_api_service/v1/app_api_service.pb.dart';
import 'package:garage_guard_app/network/intercept/token_interceptor.dart';

part 'network_event.dart';
part 'network_state.dart';
const defUrl = "https://172.23.240.1:443";


final List<Interceptor> interceptList= [
  TokenIntercepter().tokenHandler,
];



class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  var _bUrl = defUrl;
  final HttpClient clientinfo ;
  
  var connected = "disconnected";
  String get bUrl => _bUrl;

  AppApiServiceClient appClient;
  set clientURL( String newBaseUrl){
    final transport = protocol.Transport(
    baseUrl: newBaseUrl,
    codec: const ProtoCodec(), 
    httpClient:  clientinfo,
    statusParser: const StatusParser(),
    interceptors: interceptList,
    );

    appClient = AppApiServiceClient(transport);



  }



  // @override
  // void onChange(Change<NetworkState> change) {
  //     log("$change");
  //     super.onChange(change);
  // }






  




  NetworkBloc({required this.clientinfo}) : 
    appClient = AppApiServiceClient(protocol.Transport(
    baseUrl: defUrl,
    codec: const ProtoCodec(), 
    httpClient:  clientinfo,
    statusParser: const StatusParser(),
    interceptors: interceptList)),
  
  
  
  super(NetworkBaseState()){



    
    //when the button to change the ip gets clicked
    on<NetworkNewIp>((event,emit){
      final newBaseUrl = "https://${event.newIp.replaceAll(RegExp(r"\s+\b|\b\s+"), "")}:${event.newPort.replaceAll(RegExp(r"\s+\b|\b\s"), "")}";
      log(newBaseUrl);
      clientURL = newBaseUrl;
      _bUrl = newBaseUrl;
      final prevState = state;
      emit(NetworkNewIpState());
      emit(prevState);
    });


    // Check connection to server
    on<NetworkConnecionCheck>((event,emit) async{
      
      final req = appClient.connectionCheck(ConnectionCheckRequest());
      emit(NetworkConnecionCheckRequestState());
      connected = "connecting";
      await req;
      connected = "Connected";
      emit(NetworkConnecionCheckResponseState());
      emit(NetworkBaseState());
    });


    // Register user call 
    on<NetworkRegisterUser>((event, emit) async{
      final req  = appClient.registerUser(RegisterUserRequest(username: event.username,password:  event.password));
      emit(NetworkRegisterUserRequestState());
      log("registering");
      await req;
      log("registered");
      emit(NetworkRegisterUserResponseState());
      emit(NetworkLoggedInState());

    });

    // Sign in call
    on<NetworkSignIn>((event, emit) async {
      final req  = appClient.signIn(SignInRequest(username: event.username,password:  event.password));
      emit(NetworkSignInRequestState());
      log("Signing in");
      await req;
      log("Signed in");
      emit(NetworkSignInResponseState());
      emit(NetworkLoggedInState());
    },);



    // Get garages registerd to the account
    on<NetworkGetGarages>((event, emit) async{
      final req = appClient.getGarages(GetGaragesRequest());
      emit(NetworkGetGaragesRequestState());
      log("Getting Garages for user");


      final resp = await req;
      emit(NetworkGetGaragesResponseState(garages: resp.garages));
      emit(NetworkLoggedInState());
     

    });


    // Add a new garage  to the  list of garages for the user
    // The user is the admin since they added the garage

    on<NetworkNewGarage>((event, emit) async{
      final req = appClient.newGarage(NewGarageRequest(garageName: event.garageName));
      emit(NetworkNewGarageRequestState());

      await req;
      emit(NetworkNewGarageResponseState());


      emit(NetworkLoggedInState());

    });


    // Get the info need about a garage
    // For now doesn't get created at or updated at

    on<NetworkGetGarageByGarageId>((event, emit) async{
      final req = appClient.getGarageByGarageId(GetGarageByGarageIdRequest(id: event.id));
      emit(NetworkGetGarageByGarageIdRequestState());

      final resp = await req;
      emit(NetworkGetGarageByGarageIdResponseState( garageInfo: resp.garage));
      emit(NetworkLoggedInState());
      

    });



  }


  




  




 
}

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:connectrpc/connect.dart';
import 'package:connectrpc/http2.dart';
import 'package:connectrpc/protobuf.dart';
import 'package:equatable/equatable.dart';
import 'package:connectrpc/protocol/grpc.dart' as protocol;
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
      final newBaseUrl = "https://${event.newIp.replaceAll(RegExp(r"\s+\b|\b\s"), "")}:${event.newPort.replaceAll(RegExp(r"\s+\b|\b\s"), "")}";
      log(newBaseUrl);
      clientURL = newBaseUrl;
      _bUrl = newBaseUrl;
      final prevState = state;
      emit(NetworkNewIpState());
      emit(prevState);
    });

    on<NetworkConnecionCheck>((event,emit) async{
      
      final req = appClient.connectionCheck(ConnectionCheckRequest());
      emit(NetworkConnecionCheckRequestState());
      connected = "connecting";
      await req;
      connected = "Connected";
      emit(NetworkConnecionCheckResponseState());
      emit(NetworkBaseState());
    });
  }


  




  

  


 
}

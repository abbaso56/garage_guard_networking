
import 'dart:developer';


import 'package:connectrpc/connect.dart';


const appApiService = "/app_api_service.v1.AppApiService";
const noAuthList = [
  "$appApiService/ConnectionCheck",
  "$appApiService/RegisterUser",
  "$appApiService/SignIn",
];

const returnsAuth = [
  "$appApiService/RegisterUser",
  "$appApiService/SignIn",
];


class TokenIntercepter{
  String token = "";
 

  AnyFn<I, O> tokenHandler<I extends Object, O extends Object>(AnyFn<I, O> next){
    return (req) async{
      final skip = noAuthList.contains(req.spec.procedure);
      log("$skip");


      if (skip){
        final resp = await next(req);
        return resp;
      }
      // if (token == ""){
        //abort
      // }
      req.headers.add("jwt", token);

      //----------------------------------------------------------------
        final resp = await next(req);
      //----------------------------------------------------------------

      
      if (returnsAuth.contains(resp.spec.procedure)){
        token = resp.headers.get("jwt")!.first;
        log(token);
      }






      return resp;
    };
  }
}
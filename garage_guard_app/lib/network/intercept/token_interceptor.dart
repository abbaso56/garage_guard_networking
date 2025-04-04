
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
      


      if (!skip){
        log('----------------------------------------------');
        log(token);
        log('---------------------------------------------');
        req.headers.add("jwt", token);
       
      }
      // if (token == ""){
        //abort
      // }
      

      //----------------------------------------------------------------
        final resp = await next(req);
      //----------------------------------------------------------------

      log('hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii');
      if (returnsAuth.contains(resp.spec.procedure)){
        log("${resp.headers.get("jwt")!}");
        token = resp.headers.get("jwt")!.toString();
        log(token);
      }


      log('hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii');



      return resp;
    };
  }
}
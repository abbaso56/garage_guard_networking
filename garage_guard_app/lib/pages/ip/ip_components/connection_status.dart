
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';



class ConnectionStatus extends StatelessWidget {
  final  msg = ConnectionStatusMsg();
  ConnectionStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NetworkBloc,NetworkState,String>(
    selector:(state){
      if (state is NetworkConnecionCheckRequestState){
        msg.text = "Connecting";
      }
      else if (state is NetworkConnecionCheckResponseState){
        msg.text = "Connected";
      }
      return msg.text;
    } , 
    builder: (context, text){
      return Text(text);
    }); 
    
  }
}


class ConnectionStatusMsg{
  var text = "Disconnected";
}


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/network/repo/network_repository.dart';


class ConnectionStatus extends StatefulWidget {
  const ConnectionStatus({super.key});

  @override
  State<ConnectionStatus> createState() => _ConnectionStatusState();
}

class _ConnectionStatusState extends State<ConnectionStatus> {
  

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NetworkBloc,NetworkState,String>(
    selector:(state){
      return context.read<NetworkRepository>().connected;
    } , 
    builder: (context, text){
      return Text(text);
    }); 
    
  }
}




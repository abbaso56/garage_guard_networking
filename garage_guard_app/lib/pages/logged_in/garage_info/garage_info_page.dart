import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/network/gen/app_api_service/v1/app_api_service.pbserver.dart';

class GarageInfoPage extends StatefulWidget {
  final String garageId;
  final String garageName;
  const GarageInfoPage({super.key,required this.garageName, required this.garageId});

  @override
  State<GarageInfoPage> createState() => _GarageInfoPageState();
}



class _GarageInfoPageState extends State<GarageInfoPage> {
  GarageInfo? garageInfo;
  Timer? garageSync;
  // Syncs every 4 minutes
  static const period = Duration(minutes: 4);


  @override
  void dispose(){
    garageSync?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    context.read<NetworkBloc>().add(NetworkGetGarageByGarageId(id: widget.garageId));
    
    garageSync = Timer.periodic(period, (timer)=> context.read<NetworkBloc>().add(NetworkGetGarageByGarageId(id: widget.garageId)));
    
  
   return BlocConsumer(
              listener: (context, current) {
                if (current is NetworkGetGarageByGarageIdResponseState){
                  garageInfo = current.garageInfo;
                }
                
              },
              buildWhen: (previous, current) => current is NetworkGetGarageByGarageIdResponseState,
              builder: (context, state){
                  if (garageInfo != null){
                    return Column(
                      children: [
                          Text(garageInfo!.garageName),
                          garageInfo!.deviceId != ""? Container():Container(),
                          
                        ]
                      );
                    }

                  //if garageInfo didn't load yet
                  return Column(
                        children: [
                          Text(widget.garageName),
                        ]
                      );
              },
            );

  }
}
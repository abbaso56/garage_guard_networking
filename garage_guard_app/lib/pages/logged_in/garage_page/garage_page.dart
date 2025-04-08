import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/network/gen/app_api_service/v1/app_api_service.pbserver.dart';
import 'package:garage_guard_app/network/repo/network_repository.dart';
import 'package:garage_guard_app/pages/components/styled_scaffold.dart';
import 'package:garage_guard_app/pages/components/styles/app_design.dart';
import 'package:garage_guard_app/pages/logged_in/add_car/add_car_page.dart';

class GaragePage extends StatefulWidget {
  final String garageId;
  final String garageName;
  const GaragePage({super.key,required this.garageName, required this.garageId});

  @override
  State<GaragePage> createState() => _GaragePageState();
}



class _GaragePageState extends State<GaragePage> {
  @override
  void initState() {
    super.initState();
    if (!context.read<NetworkRepository>().garageCalled){
      context.read<NetworkBloc>().add(NetworkGetCarsInGarage(garageId: widget.garageId));
      context.read<NetworkRepository>().garageCalled = true;
    }
   
  }

  @override
  void dispose(){
    context.read<NetworkRepository>().garageCalled = false;

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    
  
   return StyledScaffold(appBar: AppBar(backgroundColor: AppColors.accent1Color,
     title: 
        Text(
         style: TextStyle(color: AppColors.appWhite),
          widget.garageName),
    
 
    ),
    child: Stack(
      children: [
        ListTileTheme(
        tileColor: AppColors.appWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: ListView.builder(
          itemCount: context.read<NetworkRepository>().cars.length,
          itemBuilder: (BuildContext context, int i) {
            return CarListTile(liscense: context.read<NetworkRepository>().cars[i]);
         
            },
          ),
        ),
      Positioned(
        
        bottom: 20,
        child: 
        
      ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF032383)),
                      foregroundColor: WidgetStateProperty.all<Color>(Color(0xFFF7F2F9)),
                    ) ,
                    onPressed: (){
                      context.read<NetworkRepository>().garageCalled = false;
                      Navigator.push(context, MaterialPageRoute(builder:(context) =>AddCarPage(garageId: widget.garageId)));
                    },
                    child: Text(
                      selectionColor: Color(0xFFF7F2F9),
                      "Add"),
                  ),
      )
      ],
    )
 
   );

  }
}



class CarListTile extends StatelessWidget {
  final String liscense;
  
  const CarListTile({super.key, required this.liscense});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(liscense));
  }
}
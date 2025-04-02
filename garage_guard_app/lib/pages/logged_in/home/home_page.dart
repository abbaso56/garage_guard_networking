

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/network/gen/app_api_service/v1/app_api_service.pb.dart';
import 'package:garage_guard_app/pages/components/styled_scaffold.dart';
import 'package:garage_guard_app/pages/logged_in/add_device/add_device_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Empty list of garages
  List<Garage>garages = [];

  // timer for sync the list of garages
  Timer? garagesSync;


  //get rid of timer
  @override
  void dispose() {
    
    garagesSync?.cancel();


    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
  


  // Intial getGaragesRequest on page load
  context.read<NetworkBloc>().add(NetworkGetGarages());


  //Every minute make a getGarages request to the server
  final period = Duration(minutes: 1);
  
  garagesSync = Timer.periodic(period, (timer){
    context.read<NetworkBloc>().add(NetworkGetGarages());
  });


    return StyledScaffold(
      bgColor: const Color.fromARGB(255, 137, 147, 192), 
      child: BlocBuilder<NetworkBloc, NetworkState>(

        // checks if the state is a response to a getGarages request and if so grabs the updated list of garages
        buildWhen: (previous, current) {
          if (current is NetworkGetGaragesResponseState){
            garages = current.garages;
            return true;
          }
          return false;
        },
        builder: (context, state) {
          return Column(
            children: [
              // List of Garages
              ListView.builder(
                  itemCount: garages.length,
                  prototypeItem: ListTile(title: Text(garages.first.garageName)),
                  itemBuilder: (context, i){
                    return ListTile(title: Text(garages[i].garageName));
                  }
              ),
              
              // Button to add garages
              IconButton(
              onPressed: (){
                Navigator.pushNamed(context, "/add_garage");
                },
              icon: Icon(Icons.add),

              )


            ],
          );
        },
      ),
    );
  }
}
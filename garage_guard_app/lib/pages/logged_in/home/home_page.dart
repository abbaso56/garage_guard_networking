

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
  Timer? garageListSync;


  //get rid of timer
  @override
  void dispose() {
    
    garageListSync?.cancel();


    super.dispose();
  }

 


  @override
  Widget build(BuildContext context) {
  
  garages.add(Garage(
    garageName: "Home",
    id:"",
  ));
  garages.add(Garage(
    garageName: "Parent's garage",
    id:"",
  ));

  // // Intial getGaragesRequest on page load
  // context.read<NetworkBloc>().add(NetworkGetGarages());


  //Every minute make a getGarages request to the server
  // final period = Duration(minutes: 1);
  
  // garageListSync = Timer.periodic(period, (timer){
  //   context.read<NetworkBloc>().add(NetworkGetGarages());
  // });


    return StyledScaffold(
      bgColor: const Color(0xFFF7F2F9), 
      child: BlocConsumer<NetworkBloc, NetworkState>(

        // checks if the state is a response to a getGarages request and if so grabs the updated list of garages
        buildWhen: (previous, current) =>(current is NetworkGetGaragesResponseState),
        
        listener: (context, current){
          if (current is NetworkGetGaragesResponseState){
            garages = current.garages;
          }
        },
        builder: (context, state) {
          return Stack(
            alignment: AlignmentDirectional(40, 10),
            children: [
              // List of Garages
             
              ListTileTheme(
                tileColor: Color.fromARGB(255, 219, 232, 241),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                

                child:
                ListView.builder(
                    itemCount: garages.length,
                    prototypeItem: garages.isNotEmpty ? FullListTile(text:garages.first.garageName): Center( child:Text('No garages')),
                    itemBuilder: (context, i){
                      return FullListTile(text: garages[i].garageName);
                    }
                ),
              ),
              // // Button to add garages
              // IconButton(
              // onPressed: (){  garages.first.garageName
              //   Navigator.pushNamed(context, "/add_garage");
              //   },
              // icon: Icon(Icons.add),

              // )

              
           
                  Row(
                    children: [


                    ],
                  ),
              

            ],
          );
        },
      ),
    );
  }
}


class FullListTile extends StatelessWidget {
  final String text;
  const FullListTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(text));
  }
}
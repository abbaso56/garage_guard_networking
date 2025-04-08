

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/network/gen/app_api_service/v1/app_api_service.pb.dart';
import 'package:garage_guard_app/network/repo/network_repository.dart';
import 'package:garage_guard_app/pages/components/styled_scaffold.dart';
import 'package:garage_guard_app/pages/components/styles/app_design.dart';
import 'package:garage_guard_app/pages/logged_in/add_device/add_device_page.dart';
import 'package:garage_guard_app/pages/logged_in/garage_page/garage_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Empty list of garages


  // timer for sync the list of garages
  Timer? garageListSync;


  // //get rid of timer
  @override
  void dispose() {
    
    garageListSync?.cancel();

    context.read<NetworkRepository>().homePageSync = false;
    super.dispose();
  }

 




  // Intial getGaragesRequest on page load
  // context.read<NetworkBloc>().add(NetworkGetGarages());


  // Every minute make a getGarages request to the server
  // final period = Duration(minutes: 1);
  
  // garageListSync = Timer.periodic(period, (timer){
  //   context.read<NetworkBloc>().add(NetworkGetGarages());
  // });

  @override
  void initState() {
    super.initState();

    

    
    if (!context.read<NetworkRepository>().homePageSync) {
    context.read<NetworkRepository>().homePageSync = true;
    // Initial getGaragesRequest on page load
    context.read<NetworkBloc>().add(NetworkGetGarages());
    final period = Duration(minutes: 10);

    // Every minute make a getGarages request to the server
    garageListSync = Timer.periodic(period, (timer) {
      if (mounted) {
        
        context.read<NetworkBloc>().add(NetworkGetGarages());
      }
    });
    } 
      }
  
  

  @override
  Widget build(BuildContext context) {

  


    return StyledScaffold(
      bgColor: AppColors.accent2Color, 
      child: BlocBuilder<NetworkBloc, NetworkState>(

   
        buildWhen: (previous, current){if ((context.read()<NetworkRepository>().homeChangeBool)) {
          context.read()<NetworkRepository>().homeChangeBool = false;
          return true;
        }
          return false;
        },
        builder: (context,state) {
          return Stack(
            alignment: AlignmentDirectional(40, 10),
            children: [
              // List of Garages
             
              ListTileTheme(
                tileColor: AppColors.appWhite,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                

                child:
                ListView.builder(
                    itemCount: context.read<NetworkRepository>().garages.length,
                    prototypeItem: context.read<NetworkRepository>().garages.isNotEmpty ? FullListTile(text:context.read<NetworkRepository>().garages.first.garageName, garageId: context.read<NetworkRepository>().garages.first.id,): Center( child:Text('No garages')),
                    itemBuilder: (context, i){
                      return FullListTile(
                        text: context.read<NetworkRepository>().garages[i].garageName,
                        garageId: context.read<NetworkRepository>().garages[i].id,
                        );
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
  final String garageId;
  const FullListTile({super.key, required this.text, required this.garageId});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => GaragePage(
          garageName: text,
          garageId: garageId,
          )));
      },
      title: Text(text));
  }
}
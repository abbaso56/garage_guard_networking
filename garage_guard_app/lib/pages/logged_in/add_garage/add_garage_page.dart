import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:garage_guard_app/network/bloc/network_bloc.dart";
import "package:garage_guard_app/pages/components/decorated_text_field.dart";
import "package:garage_guard_app/pages/components/styled_scaffold.dart";

class AddGaragePage extends StatefulWidget {
  const AddGaragePage({super.key});

  @override
  State<AddGaragePage> createState() => _AddGaragePageState();
}

class _AddGaragePageState extends State<AddGaragePage> {
  final garageName = TextEditingController();

  @override
  void dispose() {
    garageName.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    
    return StyledScaffold(
      child: Column(
        children: [
          

          //button to go back
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton.filled(
                onPressed: ()=>Navigator.pop(context), 

                // icon for button
                icon: 
                  Icon(Icons.close,
                  color: Colors.white
                  ),
                color: Colors.red,

                ),
            ],
          ),

          // Garage Name field
          DecoratedTextField(
            controller: garageName, 
            fieldName: "Garage Name", 
            hide: false
            ),


            ElevatedButton(
              onPressed: () => context.read<NetworkBloc>().add(NetworkNewGarage(garageName: garageName.text)), 
              child: Text("Confirm")
              ),

            BlocListener<NetworkBloc,NetworkState>(
              listener: (context, state) { 
                  if(state is NetworkNewGarageResponseState){
                    Navigator.pop(context);
                }
              },
            ),
        ],
      )
    );
  }
}
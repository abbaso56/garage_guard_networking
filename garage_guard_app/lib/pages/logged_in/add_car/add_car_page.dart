
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:garage_guard_app/main.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/network/repo/network_repository.dart';
import 'package:garage_guard_app/pages/components/decorated_text_field.dart';
import 'package:garage_guard_app/pages/components/styled_scaffold.dart';
class AddCarPage extends StatefulWidget {
  final String garageId;
  
  const AddCarPage({super.key, required this.garageId});
  @override
  State<AddCarPage> createState() => _AddCarPageState();
}

class _AddCarPageState extends State<AddCarPage> {
  final licenseText = TextEditingController();


  @override
  void dispose() {
    licenseText.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [

          DecoratedTextField(controller: licenseText, fieldName: "Liscense Plate", hide: false),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF032383)),
                      foregroundColor: WidgetStateProperty.all<Color>(Color(0xFFF7F2F9)),
                    ) ,
                    onPressed: (){
                      context.read<NetworkBloc>().add(NetworkAddCar(garageId: widget.garageId, liscense: licenseText.text));
                      Navigator.pop(context);
                    },
                    child: Text(
                      selectionColor: Color(0xFFF7F2F9),
                      "Add"),
                  ),

                  Gap(20),

              ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF032383)),
                      foregroundColor: WidgetStateProperty.all<Color>(Color(0xFFF7F2F9)),
                    ) ,
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      selectionColor: Color(0xFFF7F2F9),
                      "Back"),
                  ),
                  
            ],
          )
          
        ],
      ) 
    
    
    );
  }
}
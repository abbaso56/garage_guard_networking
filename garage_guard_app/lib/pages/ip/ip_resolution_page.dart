
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/pages/components/decorated_text_field.dart';
import 'package:garage_guard_app/pages/components/styled_scaffold.dart';
import 'package:garage_guard_app/pages/ip/ip_components/connection_status.dart';




class IpResolutionPage extends StatefulWidget {
  const IpResolutionPage({super.key});

  @override
  State<IpResolutionPage> createState() => _IpResolutionPageState();
}

class _IpResolutionPageState extends State<IpResolutionPage> {
  final newIp = TextEditingController();
  final newPort = TextEditingController();

    // get rid of controllers 
  @override
  void dispose(){
    newIp.dispose();
    newPort.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      bgColor: const Color.fromARGB(255, 137, 147, 192),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            BlocBuilder<NetworkBloc, NetworkState>(
              buildWhen: (previous, current) => current is NetworkNewIpState,
              builder: (context, state) {
                return Text(context.read<NetworkBloc>().bUrl);
              },
            ),
            
      
            // Ip input
            DecoratedTextField(
              controller: newIp,
              hide: false,
              fieldName: "IP",
            ),

            // Port input
            DecoratedTextField(
              controller: newPort,
              hide: false,
              fieldName: "Port",
            ),
              
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                
               
                ElevatedButton(
                  onPressed: () => context.read<NetworkBloc>().add(NetworkNewIp(newIp: newIp.text, newPort: newPort.text)), 
                  child: Text("submit")
                  ),
              
                ElevatedButton(
                  onPressed: () => Navigator.pop(context), 
                  child: Text("back")
                  ),

                ElevatedButton(
                onPressed: () => context.read<NetworkBloc>().add(NetworkConnecionCheck()), 
                child: Text("connection")
                ),
              ],
            ),

           ConnectionStatus(),
          ],
      ),
    );
  }
}
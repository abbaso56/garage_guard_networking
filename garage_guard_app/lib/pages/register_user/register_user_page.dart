import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/pages/components/decorated_text_field.dart';
import 'package:garage_guard_app/pages/components/styled_scaffold.dart';



class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({super.key});

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}



class _RegisterUserPageState extends State<RegisterUserPage> {
  
  final username = TextEditingController();
  final password = TextEditingController();



  // get rid of controllers 
  @override
  void dispose(){
    username.dispose();
    password.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      bgColor: const Color.fromARGB(255, 137, 147, 192),
      child: Center(
        child: Column(
          
          children: [
            //ip page button
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(right: 32, top: 16),
                    child:Align(
                      alignment: Alignment.topRight,
                      child: FloatingActionButton(
                        child: Text("IP"),
                        onPressed: ()=> Navigator.pushNamed(context,"/ip_resolution"),
                        ),
                    ),
                  ),
                ),
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  
                  // username
                  
                  DecoratedTextField(
                    controller: username,
                    hide: false,
                    fieldName: "Username",
                  ),
                  
                  
                  // password
                  
                  DecoratedTextField(
                    controller: password,
                    hide: true,
                    fieldName: "Password",

                  ),
              
              
                  // Registration Button
                  
                  BlocListener<NetworkBloc, NetworkState>(
                    listener: (context, state) {
                      if (state is NetworkLoggedInState) {Navigator.pushNamed(context,"/home_page");};
                    },
                    child:
                      ElevatedButton(
                        onPressed: () => context.read<NetworkBloc>().add(NetworkRegisterUser(username: username.text, password: password.text )), 
                        child: Text("register"),
                      ),
                    ),



                    // Switch to Sign in page
                    TextButton(
                        onPressed: () => Navigator.pushNamed(context, "/sign_in"), 
                        child: Text("Already have an acount?"),
                      ),
                ]
              ),
            ),
          ],
        ),
      ),   
    );
  }
}
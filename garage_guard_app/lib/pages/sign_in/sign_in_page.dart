import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:gap/gap.dart";
import 'package:flutter/material.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/pages/components/decorated_text_field.dart';




class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {


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
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: 
        Column(
          children: [
            // email
            const SizedBox(height: 50),
            DecoratedTextField(
              controller: username,
              fieldName: "Username",
              hide: false,
            ),
            // password
            const Gap(50),
            DecoratedTextField(
              controller: password,
              fieldName: "Password",
              hide: true,
            ),

            // sign in Button

            BlocListener<NetworkBloc, NetworkState>(
                listener: (context, state) {
                  if (state is NetworkLoggedInState) {Navigator.pushNamed(context,"/home_screen");};
                },
                child:
                  ElevatedButton(
                    onPressed: ()=> context.read<NetworkBloc>().add(NetworkSignIn(username: username.text, password: password.text )),
                    child: Text("Sign In"),
                  ),
            ),

          
          // Go to registration page
            ElevatedButton(
              onPressed: ()=> Navigator.pushNamed(context, "/register_user"),
              child: Text("Register?"),
              )
          ]
        ),
      )    
    );
  }
}
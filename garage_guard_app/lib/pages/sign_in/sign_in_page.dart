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
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFD6E1EF),
      body: SafeArea(child: 
        Center(
          child:Column(
          children: [
            const Gap(50),
            Image.asset(
              "assets/garage_guard_logo.png",
              width: 200,
              height: 200,
              ),
            // username
            const Gap(20),
            DecoratedTextField(
              controller: username,
              fieldName: "Username",
              hide: false,
            ),
            // password
            const Gap(20),
            DecoratedTextField(
              controller: password,
              fieldName: "Password",
              hide: true,
            ),

            // sign in Button
            Gap(20),
            BlocListener<NetworkBloc, NetworkState>(
                listener: (context, state) {
                  if (state is NetworkLoggedInState) {Navigator.pushNamed(context,"/home_page");};
                },
                child:
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF032383)),
                      foregroundColor: WidgetStateProperty.all<Color>(Color(0xFFF7F2F9)),
                    ) ,
                    onPressed: ()=> context.read<NetworkBloc>().add(NetworkSignIn(username: username.text, password: password.text )),
                    child: Text(
                      selectionColor: Color(0xFFF7F2F9),
                      "Sign In"),
                  ),
            ),

           Gap(30),
          // Go to registration page
            TextButton(
               style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Color(0xFF032383)),
               ),
              onPressed: ()=> Navigator.pushNamed(context, "/register_user"),
              child: Text(
                selectionColor: Color(0xFF032383),
                "Don't have an account? Register here!"),
              )
          ]
        ),
      ),  
      
      )  
    );
  }
}
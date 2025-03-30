import 'dart:developer';

import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: 
        Column(
          children: [
            // email
            const SizedBox(height: 50),
            TextField(),
            // password
            const SizedBox(height: 50),
            TextField(),
            // sign in
            ElevatedButton(
              onPressed: ()=> log("1"),
              child: Text("Sign In"),
              )
          ]
        ),
      )    
    );
  }
}
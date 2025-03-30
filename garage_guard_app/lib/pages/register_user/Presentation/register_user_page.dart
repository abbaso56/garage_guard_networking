import 'package:flutter/material.dart';
import 'package:garage_guard_app/pages/components/decorated_text_field.dart';
import 'package:garage_guard_app/pages/components/styled_scaffold.dart';

class RegisterUserPage extends StatelessWidget {
  RegisterUserPage({super.key});
  final username = TextEditingController();
  final password = TextEditingController();

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
                    fieldName: "username",
                  ),
                  
                  
                  // password
                  
                  DecoratedTextField(
                    controller: password,
                    hide: true,
                    fieldName: "password",

                  ),
              
              
                  // sign in
                ]
              ),
            ),
          ],
        ),
      ),   
    );
  }
}
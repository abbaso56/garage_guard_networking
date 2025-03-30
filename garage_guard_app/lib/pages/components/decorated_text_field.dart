import 'package:flutter/material.dart';

class DecoratedTextField extends StatelessWidget {
  final TextEditingController controller;
  final String fieldName;
  final bool hide;

  const DecoratedTextField({
    super.key,
    required this.controller,
    required this.fieldName,
    required this.hide,
    });

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child:  TextField(
          controller: controller,
          obscureText: hide,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            fillColor: const Color.fromARGB(255, 195, 204, 211),
            filled: true,
            hintText: fieldName,
          ),
        ),
      )
    );
  }
}
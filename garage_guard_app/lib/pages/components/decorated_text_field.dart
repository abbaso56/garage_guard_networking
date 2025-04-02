import 'package:flutter/material.dart';


class DecoratedTextField extends StatefulWidget {
  final TextEditingController controller;
  final String fieldName;
  final bool hide;
  const DecoratedTextField({super.key, required this.controller, required this.fieldName, required this.hide});

  @override
  State<DecoratedTextField> createState() => _DecoratedTextFieldState();
}

class _DecoratedTextFieldState extends State<DecoratedTextField> {

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child:  TextField(
          controller: widget.controller,
          obscureText: widget.hide,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            fillColor: const Color.fromARGB(255, 195, 204, 211),
            filled: true,
            hintText: widget.fieldName,
          ),
        ),
      )
    );
  }
}
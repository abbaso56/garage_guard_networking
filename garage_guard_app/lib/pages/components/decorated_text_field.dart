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
            focusColor: Color(0xFF032383),
            border: OutlineInputBorder(),
            fillColor: Color(0xFFF7F2F9),
            filled: true,
            hintText: widget.fieldName,
            hintStyle: TextStyle(
              color: Color(0xFF032383),
            )
          ),
        ),
      )
    );
  }
}
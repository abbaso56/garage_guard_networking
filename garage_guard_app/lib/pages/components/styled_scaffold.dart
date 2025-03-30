
import 'package:flutter/material.dart';
import 'package:garage_guard_app/pages/components/styles/app_font.dart';


class StyledScaffold extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  const StyledScaffold({super.key, required this.bgColor, required this.child});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: bgColor,
      body: DefaultTextStyle.merge(
        style: AppFont().primaryText,
        child: SafeArea(
          child: child
           ),
      ),
    );
  }
}
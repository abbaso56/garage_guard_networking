
import 'package:flutter/material.dart';
import 'package:garage_guard_app/pages/components/styles/app_design.dart';


class StyledScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget child;
  final Color bgColor;
  const StyledScaffold({super.key, this.bgColor = const Color.fromARGB(255, 137, 147, 192), required this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      backgroundColor: bgColor,
      body: DefaultTextStyle.merge(
        style: AppFont.primaryText,
        child: SafeArea(
          child: child
           ),
      ),
    );
  }
}


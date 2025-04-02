import 'package:connectrpc/connect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage_guard_app/network/bloc/network_bloc.dart';
import 'package:garage_guard_app/network/secure_client.dart';
import 'package:garage_guard_app/pages/logged_in/add_device/add_device_page.dart';
import 'package:garage_guard_app/pages/logged_in/add_garage/add_garage_page.dart';
import 'package:garage_guard_app/pages/logged_in/home/home_page.dart';
import 'package:garage_guard_app/pages/ip/ip_resolution_page.dart';
import 'package:garage_guard_app/pages/sign_in/sign_in_page.dart';
import 'package:garage_guard_app/pages/register_user/register_user_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();


  //get a completed "client" with correct ca certificate before loading the rest of the app
  final  clientinfo = await secureClient();
  runApp(MyApp(clientinfo: clientinfo));
}

class MyApp extends StatelessWidget {
  final HttpClient  clientinfo;
  const MyApp({super.key, required this.clientinfo});
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NetworkBloc( clientinfo:  clientinfo),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/register_user",
        routes: {
          "/register_user": (context) => RegisterUserPage(),
          "/sign_in": (context) => SignInPage(),
          "/ip_resolution": (context) => IpResolutionPage(),

          // Signed in routes
          "/home_screen": (context) => HomePage(),
          "/add_garage": (context) => AddGaragePage(),
          "/add_device": (context) =>  AddDevicePage(),
        },
      ),
    );
  }
}

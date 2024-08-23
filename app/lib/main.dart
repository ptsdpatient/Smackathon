import 'package:flutter/material.dart';
import 'package:women_safety/pages/call_page.dart';
import 'package:women_safety/pages/dynamic_main.dart';
import 'package:women_safety/pages/login_page.dart';
import 'package:women_safety/pages/signup_page.dart';
import 'package:women_safety/pages/notification_page.dart';

void main()=>runApp(const MainApp());

class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const SignupPage(),

      routes:{
        '/user':(context)=>const DynamicMain(),
        '/notifications':(context)=>const NotificationPage(),
        '/call':(context)=>const CallPage(),
        '/signup':(context)=>const SignupPage(),
        '/login':(context)=>const LoginPage(),
      },
    );
  }
}
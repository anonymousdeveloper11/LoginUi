import 'package:flutter/material.dart';
import 'package:login_ui/login.dart';
import 'package:login_ui/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes:{
      'login': (context) => LoginScreen(),
      'register': (context) => RegisterScreen()
    },
  ));
}


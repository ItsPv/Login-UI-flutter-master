
import 'package:flutter/material.dart';
import 'package:loginuicolors/ForgotPassword.dart';
import 'package:loginuicolors/login.dart';
import 'package:loginuicolors/otp.dart';
import 'package:loginuicolors/register.dart';
import 'package:loginuicolors/search.dart';

import 'MyHomePage.dart';




void main() {
  runApp(MaterialApp(
    title: 'noob',
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'otp': (context) => Otp(),
      'login': (context) => MyLogin(),
      'ForgotPassword': (context) => Forgotpassword(),
      'HomePage': (context) => MyHomePage(),

    },
  ));
}


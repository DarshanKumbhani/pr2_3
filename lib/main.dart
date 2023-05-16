import 'package:flutter/material.dart';
import 'package:pr2_3/view/home_screen.dart';
import 'package:pr2_3/view/sign_up.dart';
import 'package:pr2_3/view/welcome.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/':(context) => Welcome_screen(),
        // '/':(context) => Login_sign_in(),
        '/':(context) => Login_home_screen(),
      },
    )
  );

}


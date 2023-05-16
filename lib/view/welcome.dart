import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class Welcome_screen extends StatefulWidget {
  const Welcome_screen({Key? key}) : super(key: key);

  @override
  State<Welcome_screen> createState() => _Welcome_screenState();
}

class _Welcome_screenState extends State<Welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 250,top: 250),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(500),
                  ),
                  color: Colors.indigo),
            ),
          ),

          SizedBox(height: 60),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                transform: GradientRotation(pi/4),
                colors: [
                  Colors.indigo,
                  Colors.indigo,
                  Colors.blue,
                ],
              ),
            ),
          ),

          Align(
            alignment:Alignment.topRight,
            child: Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(500),
                  ),
                  color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 300),
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
              ),
              alignment: Alignment.center,
              child: FlutterLogo(size: 70,),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 35,top: 425),
            child: Text("Welcome",style: TextStyle(fontSize: 60,color: Colors.blue,fontWeight: FontWeight.bold),),
          ),
          //back
          Padding(
            padding: const EdgeInsets.only(left: 35,top: 500),
            child: Text("back",style: TextStyle(fontSize: 30,color: Colors.blue),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45,top: 620),
            child: Container(
              height: 55,
              width: 303,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      colors: [
                        Colors.indigo,
                        Colors.indigo,
                        Colors.blue,
                      ]
                  )
              ),
              alignment: Alignment.center,
              child: Text("Login as Maria",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
          ),
          //delete
          Padding(
            padding: const EdgeInsets.only(left: 140,top: 740),
            child: Text("Delete Account",style: TextStyle(fontSize: 20,color: Colors.blue,decoration: TextDecoration.underline),),
          )
        ],),
      ),
    );
  }
}
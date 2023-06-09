import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class sign extends StatefulWidget {
  const sign({Key? key}) : super(key: key);

  @override
  State<Login_sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(600),
                  ),
                  color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              height: 320,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(300),
                ),
                gradient: LinearGradient(
                  transform: GradientRotation(pi/4),
                  colors: [
                    Colors.indigo,
                    Colors.blue,
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 225,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(500),
                ),
                color: Colors.indigo),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 150,top: 130),
            child: Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
              ),
              alignment: Alignment.center,
              child: FlutterLogo(size: 60,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top: 360),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black26,width: 2)),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black26,width: 2)),
                label: Text("E-mail",style: TextStyle(fontSize: 20,color: Colors.black),),
                suffixIcon: Icon(Icons.email_outlined,color: Colors.black,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top: 430),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black26,width: 2)),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black26,width: 2)),
                label: Text("Password",style: TextStyle(fontSize: 20,color: Colors.black),),
                suffixIcon: Icon(Icons.lock,color: Colors.black,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55,top: 530),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "welcome");
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.indigo,
                          Colors.indigo,
                          Colors.blue,
                        ]
                    )
                ),
                alignment: Alignment.center,
                child: Text("Sign in",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account? ",style: TextStyle(fontSize:18,color: Colors.black),),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, "signup");
                  }, child: Text("Sign up",style: TextStyle(fontSize:18,color: Colors.indigo),),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _login_screenState();
}

class _login_screenState extends State<login> {
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
          Container(
            height: 320,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(500),
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
          Container(
            height: 200,
            width: 225,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(500),
                ),
                color: Colors.indigo),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 150,top: 125),
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
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(top: 250,left: 125),
            child: Text("Create",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.indigo),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 165,top: 325),
            child: Text("account",style: TextStyle(fontSize: 25,color: Colors.blue),),
          ),
          SizedBox(height: 30,),
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
                child: Text("Sign up",style: TextStyle(fontSize: 20,color: Colors.white),),
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
                  Text("Already have account? ",style: TextStyle(fontSize:18,color: Colors.black),),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, "signin");
                  }, child:  Text("Sign in",style: TextStyle(fontSize:18,color: Colors.black),),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

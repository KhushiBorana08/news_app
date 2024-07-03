import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/Home/homescreen.dart';
import 'package:news_app/Screens/SignIn/signinscreen.dart';
import 'package:news_app/Screens/SignUp/signupscreen.dart';


import 'package:shared_preferences/shared_preferences.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => splashState();
}

class splashState extends State<splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () async {
      SharedPreferences prefs=await SharedPreferences.getInstance();
      bool? check=prefs.getBool("isSignup");
      if(check!=null){
        if(check) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) =>Homescreen()));
        }
        else{
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Signinscreen()));
        }
      }
      else{
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Signupscreen()));
      }
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Test4()));
      super.initState();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Color(0xFF1A237E),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              height: 300,
              width: 250,
              child: Image.asset('assets/images/k1.png',fit:BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
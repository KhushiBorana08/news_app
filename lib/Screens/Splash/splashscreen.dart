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
    super.initState();
    Timer(Duration(seconds: 1), () async {
      SharedPreferences prefs=await SharedPreferences.getInstance();
      bool? check=prefs.getBool("islogin");
      if(check!=null){
        if(check) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) =>Homescreen()));
        }
        else{
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Signinscreen()));
        }
      }
      else{
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Signupscreen()));
      }
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Test4()));

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
              height: 250,
              width: 250,
              child: Image.asset('assets/images/nlogo-removebg-preview.png',fit:BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
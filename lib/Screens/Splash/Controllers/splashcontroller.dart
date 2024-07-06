import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/Home/homescreen.dart';
import 'package:news_app/Screens/SignIn/signinscreen.dart';
import 'package:news_app/Screens/SignUp/signupscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController{
  static checkuser(BuildContext context)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    bool? check=prefs.getBool("islogin");
    if(check!=null){
      if(check){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
      }
      else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signinscreen()));
      }
    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signupscreen()));
    }
  }
}
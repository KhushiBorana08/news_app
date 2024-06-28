import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/Home/homescreen.dart';
import 'package:news_app/Screens/SignUp/signupscreen.dart';
import 'package:news_app/Widgets/uihelpher.dart';

import 'package:shared_preferences/shared_preferences.dart';



class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _Signinscreen();
}

class _Signinscreen extends State<Signinscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Back",
              style: TextStyle(fontSize: 40, color: Colors.black),),
            SizedBox(height: 10),
            Text("Enter your credential to sign in",
              style: TextStyle(fontSize: 15, color: Colors.black),),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
                emailController, "Enter Email", Icons.mail),
            UiHelper.CustomTextField(
                passwordController, "Enter Password", Icons.visibility_off),
            SizedBox(height: 30,),
            UiHelper.CustomButton(() {
              signin(emailController.text.toString(),
                  passwordController.text.toString());
            }, "Sign in"),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {

                }, child: Text("Forgot password?" ),
                    style: TextButton.styleFrom(foregroundColor:  Color(0xFF0D47A1),)),
              ],
            ),SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                  style: TextStyle(fontSize: 15, color: Colors.black),),
                TextButton(onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Signupscreen()));
                }, child: Text("Sign Up"),
                  style: TextButton.styleFrom(foregroundColor: Color(0xFF0D47A1),
                      textStyle: TextStyle(
                          decoration: TextDecoration.underline)),
                ),
              ],
            )
          ],),

      ),
    );
  }

  signin(String user, String password) async {
    if (user == "" || password == "") {
      return UiHelper.CustomAlertBox(context, "Enter Required Field's");
    }
    else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool("isSignup", true);
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Homescreen()));
      log("Data Added");
    }
  }
}

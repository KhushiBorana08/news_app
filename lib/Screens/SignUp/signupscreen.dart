import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/SignIn/signinscreen.dart';
import 'package:news_app/Widgets/uihelpher.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});
  @override
  State<Signupscreen> createState() =>_Signupscreen();
}

class _Signupscreen extends State<Signupscreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign up", style: TextStyle(fontSize: 40, color: Colors.black),),
            SizedBox(height: 20),
            Text("Create your account",
              style: TextStyle(fontSize: 20, color: Colors.black),),
            SizedBox(height: 30),
            UiHelper.CustomTextField(userController, "User Name", Icons.person),
            UiHelper.CustomTextField(
                emailController, "Enter Email", Icons.mail),
            UiHelper.CustomTextField(
                passwordController, "Enter Password", Icons.visibility_off),
            UiHelper.CustomTextField(
                confirmController, "Confirm Password", Icons.visibility_off),

            SizedBox(height: 30,),
            UiHelper.CustomButton(() {
              signup(userController.text.toString(),
                  emailController.text.toString(),
                  passwordController.text.toString(),
                  confirmController.text.toString());
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Signinscreen()));
            }, "Sign up"),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                  style: TextStyle(fontSize: 15, color: Colors.black),),
                TextButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signinscreen()));
                }, child: Text("Sign in"),
                  style: TextButton.styleFrom(
                      foregroundColor: Color(0xFF0D47A1),
                      textStyle: TextStyle(
                          decoration: TextDecoration.underline)),
                ),
              ],
            )
          ],),

      ),
    );
  }

  signup(String user, String email, String password, String confirm) async {
    if (user.isEmpty || email.isEmpty || password.isEmpty || confirm.isEmpty||password==confirm)
      {
        // return UiHelper.CustomAlertBox(context, "Enter Required Field's");
        log("Data Added");
        return "Password match";
      }
      else
      {
        return "The Passwords Don't Match";
      }
    }
}


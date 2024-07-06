import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/SignIn/signinscreen.dart';
import 'package:news_app/Widgets/uihelpher.dart';


class Signupscreen extends StatefulWidget {
const  Signupscreen({super.key});
  @override
  State<Signupscreen> createState() => _Signupscreen();
}

class _Signupscreen extends State<Signupscreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  bool passwordVisible = false;
  //
  // String? validateEmail(String? email){
  //   RegExp emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  //   final isEmailValid=emailRegex.hasMatch(email ?? '');
  //   if(!isEmailValid){
  //     return'Please enter a valid email';
  //   }
  //   return null;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign up",
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              "Create your account",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(height: 30),
            UiHelper.CustomTextField(userController, "User Name", Icons.person),
            UiHelper.CustomTextField(emailController, "Enter Email", Icons.mail),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: UiHelper.Custompass(passwordController, "Enter Password",
                  "password", passwordVisible, () {
                setState(() {
                  passwordVisible = !passwordVisible;
                  log(passwordVisible.toString());
                });
              }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: UiHelper.Custompass(confirmController, "Confirm Password",
                  "password", passwordVisible, () {
                setState(() {
                  passwordVisible = !passwordVisible;
                  log(passwordVisible.toString());
                });
              }),
            ),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomButton(() {
              signup(
                  userController.text.toString(),
                  emailController.text.toString(),
                  passwordController.text.toString(),
                  confirmController.text.toString());
            }, "Sign up"),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Signinscreen()));
                  },
                  child: Text("Sign in"),
                  style: TextButton.styleFrom(
                      foregroundColor: Color(0xFF0D47A1),
                      textStyle:
                          TextStyle(decoration: TextDecoration.underline)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  signup(String user, String email, String password, String confirm) {
    if (user == "" || email == "" || password == "" || confirm == "") {
      return UiHelper.CustomAlertBox(context, "Enter Required Field's");
    } else {
      checkpassword(password, confirm);
    }
  }

  checkpassword(String password, String confirm) {
    if (password != confirm) {
      return UiHelper.CustomAlertBox(context,"Password doesn't Match");
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Signinscreen()));
    }
  }
}

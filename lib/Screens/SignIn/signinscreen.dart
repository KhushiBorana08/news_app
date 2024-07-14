import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Screens/Home/homescreen.dart';
import 'package:news_app/Screens/SignIn/Blocs/signinblocs.dart';
import 'package:news_app/Screens/SignIn/Blocs/signinstates.dart';
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
  bool passwordVisible =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.white,
        centerTitle: true,
      ),
      body:BlocConsumer<SignInBlocs,SignInStates>(listener:(context,state){
        if(state is SignInLoadedStates){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        }
        else if(state is SignInErrorStates){
          UiHelper.CustomAlertBox(context,state.errormsg.toString());
        }
      },builder: (context,state){
        if(state is SignInLoadingStates){
          return Center(child: CircularProgressIndicator(),);
        }
        return  SingleChildScrollView(
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
              Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                child: UiHelper.Custompass(
                    passwordController, "Enter Password",  "password",passwordVisible,(){
                  setState(() {
                    passwordVisible=!passwordVisible;
                    log(passwordVisible.toString());
                  });
                }),),
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
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Signupscreen()));
                  }, child: Text("Sign Up"),
                    style: TextButton.styleFrom(foregroundColor: Color(0xFF0D47A1),
                        textStyle: TextStyle(
                            decoration: TextDecoration.underline)),
                  ),
                ],
              )
            ],),

        );
      },)
    );
  }

  signin(String user, String password) async {
    if (user == "" || password == "") {
      return UiHelper.CustomAlertBox(context, "Enter Required Field's");
    }
    else {
     context.read<SignInBlocs>().signin(user, password);
      log("Data Added");
    }
  }
}

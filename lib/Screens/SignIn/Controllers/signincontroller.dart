import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Screens/SignIn/Blocs/signinblocs.dart';
import '../../../Widgets/uihelpher.dart';

class SignInController{
  static signIn(String email,String password,BuildContext context){
    if(email=="" || password==""){
      return UiHelper.CustomAlertBox(context,"Enter Required Field's");
    }
    else{
      context.read<SignInBlocs>().signin(email, password);
      log("Success");
    }
  }
}
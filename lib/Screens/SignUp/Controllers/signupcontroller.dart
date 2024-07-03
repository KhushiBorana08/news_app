import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Screens/SignUp/Blocs/signupbloc.dart';
import '../../../Widgets/uihelpher.dart';

class SignUpController{
  static signUp(String email,String password,String username,BuildContext context){
    if(email=="" || password=="" || username==""){
      return UiHelper.CustomAlertBox(context,"Enter Required Field's");
    }
    else{
      context.read<SignUpBloc>().signup(email, password, username);
      log("Success");
    }
  }
}
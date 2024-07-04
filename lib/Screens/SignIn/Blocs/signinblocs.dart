import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Screens/SignIn/Blocs/signinevents.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Screens/SignIn/Blocs/signinstates.dart';
import 'package:news_app/Screens/SignIn/Models/signinmodel.dart';
import 'package:news_app/Screens/SignUp/Models/signupmodel.dart';
import 'package:news_app/Utils/baseurls.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SignInBlocs extends Bloc<SignInEvents,SignInStates>{
  SignInBlocs():super(SignInInitialStates());
  signin(String email,String password)async{
    emit(SignInLoadingStates());
    final response=await http.post(Uri.parse(BaseUrls.signin),
        headers: {
          'Content-Type':'application/json'
        },
        body: jsonEncode({
          "email":email,
          "password":password
        })
    );
    if(response.statusCode==200){
      SharedPreferences prefs=await SharedPreferences.getInstance();
      Map<String,dynamic>responsedata=jsonDecode(response.body);
      log(responsedata.toString());
      String message=responsedata['message'];
      log(message);
      String token=responsedata['token'];
      log("Token ------------ $token");
      prefs.setString("token", token);
      prefs.setBool("islogin", true);
    signinmodel signInModel=signinmodel.fromJson(responsedata);
      emit(SignInLoadedStates(signInModel: signInModel));
    }
    else{
      emit(SignInErrorStates(errormsg: response.statusCode.toString()));
    }
  }
}
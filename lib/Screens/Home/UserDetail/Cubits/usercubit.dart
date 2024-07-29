import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Screens/Home/UserDetail/Cubits/userstates.dart';
import 'package:news_app/Screens/Home/UserDetail/Model/usermodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserCubit extends Cubit<UserStates>{
  UserCubit() : super(UserIntialState());
  getnews() async{
    emit(UserLoadingStates());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    String? userid = prefs.getString("userid");
    log(token.toString());
    final response = await http.post(Uri.parse("https://news-api-delta-lyart.vercel.app/newsapp/userdetails"),
      headers: {"Content-type": 'application/json', "Authorization": token!},
        body: jsonEncode({"userid":userid}));
    if (response.statusCode == 200) {
      Map<String, dynamic> responsedata = jsonDecode(response.body);
      Userpage userpage = Userpage.fromJson(responsedata);
      emit(UserLoadedStates(userpage: userpage));
    } else {
      emit(UserErrorStates(error: response.statusCode.toString()));
    }
  }
}
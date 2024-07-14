import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Screens/LatestNews/Cubits/newsstates.dart';
import 'package:news_app/Screens/LatestNews/models/newsmodel.dart';
import 'package:news_app/Utils/baseurls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Newscubit extends Cubit<NewsStates> {
  Newscubit() : super(NewsInitialStates());
  getnews() async {
    emit(NewsLoadingStates());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    String? userid = prefs.getString("userid");
    log(token.toString());
    final response = await http.post(Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2024-06-14&sortBy=publishedAt&apiKey=3d895a35ddd34ce9adb1a74d9299ebc3"),
        headers: {"Content-Type": 'application/json', "Authorization": token!},
        body: jsonEncode({"user": "6693529b91a2b3ca6d313fe8"}));
    if (response.statusCode == 200) {
      Map<String, dynamic> responsedata = jsonDecode(response.body);
      Latest latest = Latest.fromJson(responsedata);
      emit(NewsLoadedStates(latest: latest));
    } else {
      emit(NewsErrorStates(error: response.statusCode.toString()));
    }
  }
}

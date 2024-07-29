import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Screens/Home/UserDetail/Cubits/usercubit.dart';
import 'package:news_app/Screens/Home/UserDetail/Cubits/userstates.dart';
import 'package:news_app/Widgets/uihelpher.dart';

class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  TextEditingController userController = TextEditingController();
  TextEditingController createController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Detail"),
      ),
      body: BlocBuilder<UserCubit, UserStates>(builder: (context, state) {
        return
        Column(
          children: [
             UiHelper.CustomTextField(userController, "User Name", Icons.person),
             UiHelper.CustomTextField(createController, "Create user", Icons.access_alarm)
    ],
    );
      }),
    );
  }
}
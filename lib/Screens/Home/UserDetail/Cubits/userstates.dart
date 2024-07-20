import 'package:news_app/Screens/Home/UserDetail/Model/usermodel.dart';

abstract class UserStates{}
class UserIntialState extends UserStates{}
class UserLoadingStates extends UserStates{}
class UserLoadedStates extends UserStates{
  Userpage userpage;
  UserLoadedStates({required this.userpage});
}
class UserErrorStates extends UserStates{
  String error;
  UserErrorStates({required this.error});
}
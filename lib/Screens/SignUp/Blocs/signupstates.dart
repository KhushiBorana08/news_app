
import 'package:news_app/Screens/SignUp/Models/signupmodel.dart';

abstract class SignUpStates{}
class SignUpInitialStates extends SignUpStates{}
class SignUpLoadingStates extends SignUpStates{}
class SignUpLoadedStates extends SignUpStates{
  signupmodel signUpModel;
  SignUpLoadedStates({required this.signUpModel});
}
class SignUpErrorStates extends SignUpStates{
  String errormsg;
  SignUpErrorStates({required this.errormsg});
}
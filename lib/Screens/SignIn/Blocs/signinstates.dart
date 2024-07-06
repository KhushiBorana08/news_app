
import '../Models/signinmodel.dart';

abstract class SignInStates{}
class SignInInitialStates extends SignInStates{}
class SignInLoadingStates extends SignInStates{}
class SignInLoadedStates extends SignInStates{
  signinmodel signInModel;
  SignInLoadedStates({required this.signInModel});
}
class SignInErrorStates extends SignInStates{
  String errormsg;
  SignInErrorStates({required this.errormsg});
}
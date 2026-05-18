import 'package:flutter/material.dart';
import '../../../../core/helper_function/navigation.dart';
import '../pages/login_page.dart';

class LoginProvider extends ChangeNotifier {
  void goTo() {
    navPARU(LoginPage());
  }
}

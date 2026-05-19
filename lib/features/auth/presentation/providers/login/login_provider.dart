import 'package:flutter/material.dart';
import 'package:start2/core/models/text_field_model.dart';
import 'package:start2/features/auth/presentation/providers/login/login_operations.dart';
import '../../../../../core/helper_function/navigation.dart';
import '../../pages/login_page.dart';

class LoginProvider extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  bool isAcceptTerms = false;
  List<TextFieldModel> loginInputs = [];

  void rebuild() {
    notifyListeners();
  }

  void goTo() {
    initInputs();
    navPARU(LoginPage());
  }
}

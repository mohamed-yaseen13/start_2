import 'package:flutter/material.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/features/auth/presentation/pages/otp_page.dart';

class OtpProvider extends ChangeNotifier {
  void goTo() {
    navP(OtpPage());
  }
}

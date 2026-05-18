import 'dart:async';

import 'package:flutter/material.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/features/auth/presentation/pages/otp_page.dart';
import 'package:start2/features/auth/presentation/providers/otp_operations.dart';

class OtpProvider extends ChangeNotifier {
  Timer? timer;
  int counter = 60;

  final formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  late String phone;
  String? hashedCode;

  void rebuild() {
    notifyListeners();
  }

  void goTo(String phone) {
    reset();
    setPhone(phone);
    sendCode();
    navP(OtpPage());
    startTimer();
  }
}

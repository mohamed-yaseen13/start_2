import 'dart:async';
import 'package:flutter/material.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/features/auth/domain/usecases/auth_use_cases.dart';
import 'package:start2/features/auth/presentation/pages/otp_page.dart';
import 'package:start2/features/auth/presentation/providers/otp/otp_operations.dart';

class OtpProvider extends ChangeNotifier {
  Timer? timer;
  int counter = 60;

  final formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  final AuthUseCases authUseCases;
  OtpProvider(this.authUseCases);

  late String phone;
  String? hashedCode;

  void rebuild() {
    notifyListeners();
  }

  void goTo(String phone) {
    reset();
    setPhone(phone);
    sendOtpCode();
    navP(OtpPage());
    startTimer();
  }
}

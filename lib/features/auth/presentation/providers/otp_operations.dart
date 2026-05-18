import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/constants/constants.dart';
import 'package:start2/core/helper_function/helper_function.dart';
import 'package:start2/core/helper_function/loading.dart';
import 'package:start2/features/auth/presentation/providers/complete_data_provider.dart';
import 'package:start2/features/auth/presentation/providers/otp_provider.dart';

extension OtpOperations on OtpProvider {
  void startTimer() {
    counter = 60;
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (e) {
      if (timer?.isActive ?? false) {
        try {
          counter--;
          rebuild();
        } catch (error) {
          debugPrint("$error");
        }
      }
      if (counter == 0) {
        e.cancel();
      }
    });
    rebuild();
  }

  void reset() {
    counter = 60;
    otpController = TextEditingController();
  }

  void setPhone(String phone) {
    this.phone = phone;
  }

  void submitOtpForm() {
    if (formKey.currentState!.validate()) {
      if (otpController.text.length == 4) {
        checkCode();
      }
    }
  }

  Future<void> checkCode() async {
    // Map<String, dynamic> data = {};
    // data["token"] = await FirebaseMessaging.instance.getToken() ?? "123";
    // data["phone"] = otpNumber;
    // data["hashed_code"] = theHashCode;
    // data["code"] = otpController.text.trim();

    loading();
    // final result = await authUseCase.checkCode(data);
    await delay(300);
    navPopLoading();
    Constants.globalContext().read<CompleteDataProvider>().goTo();
    // result.fold((l) => showToast(l.message!), (r) {
    //   final profile = Provider.of<ProfileProvider>(
    //     Constants.globalContext(),
    //     listen: false,
    //   );
    //   profile.successLogin(userEntity: r);
    // });
  }

  void sendCode() async {
    // Map<String, dynamic> data = {};
    // data['phone'] = phone;
    //loading();
    // data => phone
    // loading
    // call API
    // navPOP
    // showToast
    // hashedCode = r;
  }
}

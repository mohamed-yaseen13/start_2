import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/constants/constants.dart';
import 'package:start2/core/dialog/snack_bar.dart';
import 'package:start2/core/helper_function/loading.dart';
import 'package:start2/features/auth/presentation/providers/profile_operations.dart';
import 'package:start2/features/auth/presentation/providers/profile_provider.dart';
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
    Map<String, dynamic> data = {};
    data["code"] = otpController.text.trim();
    data["hashed_code"] = hashedCode;
    data['login'] = 1;
    data["token"] = await FirebaseMessaging.instance.getToken() ?? "123";
    data["phone"] = phone;
    loading();
    final response = await authRemoteDataSource.checkCode(data);
    navPopLoading();
    response.fold(
      (l) {
        showToast(l.message!);
      },
      (r) {
        Constants.globalContext().read<ProfileProvider>().successLogin(
          userEntity: r,
        );
      },
    );
  }

  Future<void> sendOtpCode() async {
    Map<String, dynamic> data = {};
    data['phone'] = phone;
    loading();
    var response = await authRemoteDataSource.sendOtpCode(data);
    navPopLoading();
    response.fold(
      (l) {
        showToast(l.message ?? "");
      },
      (r) {
        hashedCode = r;
      },
    );
  }
}

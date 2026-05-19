import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/constants/constants.dart';
import 'package:start2/core/dialog/snack_bar.dart';
import 'package:start2/core/helper_function/text_form_field_validation.dart';
import 'package:start2/core/models/text_field_model.dart';
import 'package:start2/features/auth/presentation/providers/login/login_provider.dart';
import 'package:start2/features/auth/presentation/providers/otp/otp_provider.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

extension LoginOperations on LoginProvider {
  void toggleAccecptTerms() {
    isAcceptTerms = !isAcceptTerms;
    rebuild();
  }

  void initInputs() {
    loginInputs = [
      TextFieldModel(
        key: 'phone',
        controller: TextEditingController(),
        textInputType: TextInputType.phone,
        validator: (value) => validatePhone(value),
        prefix: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '966+',
                style: Constants.globalContext().text.bodyMedium!.copyWith(
                  color: Constants.globalContext().colors.secondary,
                ),
              ),
              SizedBox(width: 8.w),
              SvgPicture.asset(AppImages.verticalLine),
            ],
          ),
        ),
        autoFocus: true,
        next: false,
      ),
    ];
  }

  void submit() {
    String nameError = '';
    for (var element in loginInputs) {
      if (!formKey.currentState!.validate()) {
        String? error = element.validator!(element.controller.text);
        if (error != null && error.isNotEmpty) {
          nameError += '$error\n';
        }
      }
    }
    if (isAcceptTerms == false) {
      nameError += LanguageProvider.translate('auth', 'must_accept_terms');
      nameError += '\n';
    }
    if (nameError.isEmpty) {
      Constants.globalContext().read<OtpProvider>().goTo(
        loginInputs.firstWhere((e) => e.key == 'phone').controller.text,
      );
    } else {
      showToast(nameError.trim());
    }
  }
}

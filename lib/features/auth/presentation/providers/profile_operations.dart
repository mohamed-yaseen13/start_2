import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/constants/constants.dart';
import 'package:start2/core/dialog/snack_bar.dart';
import 'package:start2/core/helper_function/api.dart';
import 'package:start2/core/helper_function/prefs.dart';
import 'package:start2/core/helper_function/text_form_field_validation.dart';
import 'package:start2/core/models/text_field_model.dart';
import 'package:start2/features/auth/domain/entities/user_entity.dart';
import 'package:start2/features/auth/presentation/providers/profile_provider.dart';
import 'package:start2/features/nav/presentation/providers/nav_bar_provider.dart';

extension ProfileOperations on ProfileProvider {
  void initInputs() {
    userInputs = [
      TextFieldModel(
        key: 'first_name',
        controller: TextEditingController(),
        hint: 'first_name',
        validator: (value) => validateFirstName(value),
      ),
      TextFieldModel(
        key: 'last_name',
        controller: TextEditingController(),
        hint: "last_name",
        validator: (value) => validateLastName(value),
      ),
      TextFieldModel(
        key: 'email',
        controller: TextEditingController(),
        hint: 'email',
        next: false,
        textInputType: TextInputType.emailAddress,
        validator: (value) => validateEmail(value),
      ),
    ];
  }

  void submit() {
    String nameError = '';
    for (var element in userInputs) {
      if (!formKey.currentState!.validate()) {
        String? error = element.validator!(element.controller.text);
        if (error != null && error.isNotEmpty) {
          nameError += '$error\n';
        }
      }
    }
    if (nameError.isEmpty) {
      // successLogin(); TODO callapi update profile
    } else {
      showToast(nameError.trim());
    }
  }

  // Future<void> pickProfileImage() async {
  //   final XFile? pickedFile = await chooseMedia<XFile>();
  //   if (pickedFile != null) {
  //     updateImage(pickedFile);
  //   }
  // }

  // void updateImage(XFile image) {
  //   this.image = image;
  //   rebuild();
  // }

  void successLogin({required UserEntity userEntity}) async {
    // this.userEntity = userEntity;
    if (userEntity.token != null) {
      ApiHandel.getInstance.updateHeader(userEntity.token!);
      sharedPreferences.setString('token', userEntity.token!);
    }
    if (userEntity.email == null) {
      goTo();
    } else {
      Constants.globalContext().read<NavBarProvider>().goTo();
    }
  }
}

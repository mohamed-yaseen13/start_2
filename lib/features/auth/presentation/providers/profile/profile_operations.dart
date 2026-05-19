import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/constants/constants.dart';
import 'package:start2/core/dialog/snack_bar.dart';
import 'package:start2/core/helper_function/api.dart';
import 'package:start2/core/helper_function/image.dart';
import 'package:start2/core/helper_function/loading.dart';
import 'package:start2/core/helper_function/prefs.dart';
import 'package:start2/core/helper_function/text_form_field_validation.dart';
import 'package:start2/core/models/text_field_model.dart';
import 'package:start2/features/auth/domain/entities/user_entity.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_provider.dart';
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

  Future<void> pickProfileImage() async {
    final XFile? pickedFile = await chooseMedia<XFile>();
    if (pickedFile != null) {
      updateImage(pickedFile);
    }
  }

  void updateImage(XFile image) {
    this.image = image;
    rebuild();
  }

  ImageProvider<Object> showUserImage() {
    if (image != null) {
      return FileImage(File(image!.path));
    } else if (userEntity!.image != null) {
      return CachedNetworkImageProvider(userEntity!.image!);
    } else {
      return AssetImage(AppImages.userImagePlaceHolder);
    }
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
      updateProfile();
    } else {
      showToast(nameError.trim());
    }
  }

  Future<void> updateProfile() async {
    Map<String, dynamic> data = {};
    for (var element in userInputs) {
      data[element.key] = element.controller.text;
    }
    if (image != null) {
      data['image'] = await MultipartFile.fromFile(image!.path);
    }
    loading();
    var response = await authUseCases.updateProfile(data);
    response.fold(
      (l) {
        showToast(l.message ?? "");
      },
      (r) {
        successLogin(userEntity: r);
      },
    );
  }

  void successLogin({required UserEntity userEntity}) async {
    this.userEntity = userEntity;
    if (userEntity.token != null) {
      ApiHandel.getInstance.updateHeader(userEntity.token!);
      sharedPreferences.setString('token', userEntity.token!);
    }
    if (userEntity.firstName == null ||
        userEntity.lastName == null ||
        userEntity.email == null) {
      goTo();
    } else {
      Constants.globalContext().read<NavBarProvider>().goTo();
    }
  }

  void getProfile() async {
    var response = await authUseCases.getProfile();
    response.fold(
      (l) {
        showToast(l.message ?? "");
      },
      (r) {
        userEntity = r;
        rebuild();
      },
    );
  }
}

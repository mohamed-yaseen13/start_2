import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/core/models/text_field_model.dart';
import 'package:start2/features/auth/presentation/pages/profile_page.dart';
import 'package:start2/features/auth/presentation/providers/profile_operations.dart';

class ProfileProvider extends ChangeNotifier {
  XFile? image;
  final formKey = GlobalKey<FormState>();
  List<TextFieldModel> userInputs = [];

  void rebuild() {
    notifyListeners();
  }

  void goTo() {
    initInputs();
    navP(ProfilePage());
  }
}

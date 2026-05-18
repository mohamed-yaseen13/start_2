import 'package:flutter/material.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/features/auth/presentation/pages/complete_data_page.dart';

class CompleteDataProvider extends ChangeNotifier {
  void goTo() {
    navP(CompleteDataPage());
  }
}

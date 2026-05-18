import 'package:flutter/material.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/features/nav/presentation/pages/nav_bar_page.dart';

class NavBarProvider extends ChangeNotifier {
  void goTo() {
    navPARU(NavBarPage());
  }
}

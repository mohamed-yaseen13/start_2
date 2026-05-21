import 'package:flutter/material.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/features/home/presentation/pages/home_page.dart';
import 'package:start2/features/nav/domain/entities/nav_item_entity.dart';
import 'package:start2/features/nav/presentation/pages/nav_bar_view.dart';

class NavBarProvider extends ChangeNotifier {
  int currentIndex = 0;

  List<NavItemEntity> navItems = [
    NavItemEntity(title: "home", icon: AppImages.navHomeIcon, page: HomePage()),
    NavItemEntity(
      title: "the_offices",
      icon: AppImages.navOfficeIcon,
      page: Scaffold(),
    ),
    NavItemEntity(title: '', icon: "", page: SizedBox()),
    NavItemEntity(
      title: "message",
      icon: AppImages.navMessageIcon,
      page: Scaffold(),
    ),
    NavItemEntity(title: "more", icon: AppImages.navMoreIcon, page: Scaffold()),
  ];

  void setIndex(int index) {
    if (currentIndex == index) {
      return;
    } else {
      currentIndex = index;
      notifyListeners();
    }
  }

  void goTo() {
    navPARU(NavBarView());
  }
}

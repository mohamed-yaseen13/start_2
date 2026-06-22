import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/models/drop_down_class.dart';

class CarCategory {
  int id;
  String name;
  String icon;

  CarCategory({required this.id, required this.name, required this.icon});
}

mixin CarDropdownMixin on ChangeNotifier implements DropDownClass<CarCategory> {
  List<CarCategory> carCategories = [
    CarCategory(id: 1, name: 'سيارة', icon: AppImages.carIcon),
    CarCategory(id: 2, name: 'نص نقل', icon: AppImages.carIcon),
    CarCategory(id: 3, name: 'مشروع', icon: AppImages.carIcon),
  ];

  CarCategory? selectedCarCategoty;

  @override
  String displayedName() => selectedCarCategoty!.name;
  @override
  String displayedOptionName(CarCategory type) => type.name;
  @override
  Widget? displayedOptionWidget(CarCategory type) => null;
  @override
  Widget? displayedWidget() => SvgPicture.asset(selectedCarCategoty!.icon);
  @override
  List<CarCategory>? list() => carCategories;
  @override
  bool require() => false;
  @override
  CarCategory? selected() => selectedCarCategoty;
  @override
  String? titleName() => null;
  @override
  value() => selectedCarCategoty!.id;

  @override
  Future<dynamic> onTap(CarCategory? data) async {
    selectedCarCategoty = data;
    notifyListeners();
  }

  void initDropDown() {
    selectedCarCategoty = carCategories[0];
  }
}

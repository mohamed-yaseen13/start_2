import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/models/drop_down_class.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class SortEntity {
  int id;
  String name;
  String icon;

  SortEntity({required this.id, required this.name, required this.icon});
}

class SortProvider extends ChangeNotifier implements DropDownClass<SortEntity> {
  SortEntity? selectedEntity;

  List<SortEntity> sortList = [
    SortEntity(id: 1, name: 'price', icon: AppImages.dollarIcon),
  ];
  @override
  String displayedName() {
    return selectedEntity?.name ??
        LanguageProvider.translate('global', 'sort_by');
  }

  @override
  String displayedOptionName(SortEntity type) {
    return type.name;
  }

  @override
  Widget? displayedOptionWidget(SortEntity type) {
    return null;
  }

  @override
  Widget? displayedWidget() {
    return SvgPicture.asset(selectedEntity?.icon ?? AppImages.sortIcon);
  }

  @override
  List<SortEntity>? list() {
    return sortList;
  }

  @override
  Future<dynamic> onTap(SortEntity? data) async {
    selectedEntity = data;
    notifyListeners();
  }

  @override
  bool require() {
    return false;
  }

  @override
  SortEntity? selected() {
    return selectedEntity;
  }

  @override
  String? titleName() {
    return null;
  }

  @override
  value() {
    return selectedEntity?.id;
  }
}

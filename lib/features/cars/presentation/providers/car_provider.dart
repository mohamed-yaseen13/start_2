import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/core/models/app_entities.dart';
import 'package:start2/core/models/drop_down_class.dart';
import 'package:start2/core/models/provider_structure_model.dart';
import 'package:start2/core/widgets/all_data_header_widget.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';
import 'package:start2/features/cars/presentation/pages/all_cars_page.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class CarCategory {
  int id;
  String name;
  String icon;

  CarCategory({required this.id, required this.name, required this.icon});
}

class CarProvider extends ChangeNotifier
    implements SelectedProviderModel<Filter>, DropDownClass<CarCategory> {
  // Home Page
  List<CarEntity> homeCars = [
    CarEntity(
      type: 'ايجار',
      images: [AppImages.car1],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
      isFavorited: false,
    ),
    CarEntity(
      type: 'ايجار',
      images: [AppImages.car2],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
      isFavorited: false,
    ),
  ];

  // Car Page
  // Filter Tabs
  List<Filter> filters = [
    Filter(id: 1, name: 'all'),
    Filter(id: 2, name: 'sell'),
    Filter(id: 3, name: 'rent'),
    Filter(id: 4, name: 'needed_cars'),
  ];

  @override
  Filter? selectedEntity;

  @override
  bool isSelected(Filter entity) {
    return selectedEntity?.id == entity.id;
  }

  @override
  Future<dynamic> onSelect(Filter entity) async {
    selectedEntity = entity;
    notifyListeners();
  }

  // Drop Down
  List<CarCategory> carCategories = [
    CarCategory(id: 1, name: 'سيارة', icon: AppImages.carIcon),
    CarCategory(id: 2, name: 'نص نقل', icon: AppImages.carIcon),
    CarCategory(id: 3, name: 'مشروع', icon: AppImages.carIcon),
  ];

  CarCategory? selectedCarCategoty;

  @override
  String displayedName() {
    return selectedCarCategoty!.name;
  }

  @override
  String displayedOptionName(CarCategory type) {
    return type.name;
  }

  @override
  Widget? displayedOptionWidget(CarCategory type) {
    return null;
  }

  @override
  Widget? displayedWidget() {
    return SvgPicture.asset(selectedCarCategoty!.icon);
  }

  @override
  List<CarCategory>? list() {
    return carCategories;
  }

  @override
  Future<dynamic> onTap(CarCategory? data) async {
    selectedCarCategoty = data;
    notifyListeners();
  }

  @override
  bool require() {
    return false;
  }

  @override
  CarCategory? selected() {
    return selectedCarCategoty;
  }

  @override
  String? titleName() {
    return null;
  }

  @override
  value() {
    return selectedCarCategoty!.id;
  }

  // Header
  List<AllDataHeaderContainerWidgetEntity> headerEntities = [
    AllDataHeaderContainerWidgetEntity(
      icon: AppImages.officeIcon,
      firstText: 'offices',
      secondText: 'the_cars',
      onTap: () {
        // go to car offices page
      },
    ),
    AllDataHeaderContainerWidgetEntity(
      icon: AppImages.serviceIcon,
      firstText: 'services',
      secondText: 'the_cars',
      onTap: () {
        // go to car services oage
      },
    ),
  ];

  // Cars on Car Page
  List<CarEntity> carCars = [
    CarEntity(
      type: 'بيع',
      images: [AppImages.carCar1],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال",
      viewCount: 333,
      isFavorited: true,
    ),
    CarEntity(
      type: 'ايجار',
      images: [AppImages.carCar2],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
      isFavorited: false,
    ),
  ];

  void goTo() {
    selectedEntity = filters[0];
    selectedCarCategoty = carCategories[0];
    navP(AllCarsPage());
  }
}

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

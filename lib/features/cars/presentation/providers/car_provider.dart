import 'package:flutter/material.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';

class CarProvider extends ChangeNotifier {
  List<CarEntity> cars = [
    CarEntity(
      type: 'ايجار',
      images: [AppImages.car1],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
    ),
    CarEntity(
      type: 'ايجار',
      images: [AppImages.car2],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
    ),
  ];
}

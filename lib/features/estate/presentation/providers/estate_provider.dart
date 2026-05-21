import 'package:flutter/material.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/estate/domain/entities/estate_entity.dart';

class EstateProvider extends ChangeNotifier {
  List<EstateEntity> estates = [
    EstateEntity(
      type: 'مميز',
      images: [AppImages.estate1],
      title: 'فيلا للبيع ',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
    ),
    EstateEntity(
      type: 'ايجار',
      images: [AppImages.estate2],
      title: 'فيلا للبيع ',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
    ),
  ];
}

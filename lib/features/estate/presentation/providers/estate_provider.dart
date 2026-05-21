import 'package:flutter/material.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/features/estate/domain/entities/estate_entity.dart';
import 'package:start2/features/estate/presentation/pages/all_estates_page.dart';

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
      isFavorited: false,
    ),
    EstateEntity(
      type: 'ايجار',
      images: [AppImages.estate2],
      title: 'فيلا للبيع ',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
      isFavorited: false,
    ),
  ];

  void goTo() {
    navP(AllEstatesPage());
  }
}

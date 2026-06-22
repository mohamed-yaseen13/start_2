import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/banners/domain/entities/banner_entity.dart';

class BannersProvider extends ChangeNotifier {
  final CarouselSliderController carouselController =
      CarouselSliderController();

  int currentPage = 0;
  List<BannerEntity> bannersList = [
    BannerEntity(id: 1, image: AppImages.banner, url: 'url'),
    BannerEntity(id: 1, image: AppImages.banner, url: 'url'),
    BannerEntity(id: 1, image: AppImages.banner, url: 'url'),
  ];

  void onPageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }

  void onTap() {
    // hit the url
  }
}

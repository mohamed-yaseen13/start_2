import 'package:flutter/material.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/constants/constants.dart';
import 'package:start2/features/ads/domain/entities/home_header_ad_entity.dart';

class AdsProvider extends ChangeNotifier {
  List<HomeHeaderAdEntity> homeHeaderAds = [
    HomeHeaderAdEntity(
      color: Constants.globalContext().colors.primary,
      icon: AppImages.adsIcon,
      text: 'my_ads',
    ),
    HomeHeaderAdEntity(
      color: Color(0xFFFF5A00),
      icon: AppImages.premiumAds,
      text: 'premium_your_ad',
    ),
  ];
}

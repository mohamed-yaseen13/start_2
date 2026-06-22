import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';
import 'package:start2/features/cars/presentation/widgets/car/car_images_widget.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class CarPage extends StatelessWidget {
  final CarEntity car;

  const CarPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LanguageProvider.translate('global', 'car_details'),
          style: context.text.titleMedium,
        ),
        actions: [
          SvgPicture.asset(
            car.isFavorited!
                ? AppImages.favoriteHeartIcon
                : AppImages.heartIcon,
          ),
          SizedBox(width: 8.w),
          SvgPicture.asset(AppImages.shareIcon),
          SizedBox(width: 24.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              CarImagesWidget(images: car.images!, type: car.type!),
              SizedBox(height: 24.h),
              // Location
            ],
          ),
        ),
      ),
    );
  }
}

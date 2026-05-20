import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';

class HomeCarDetailsWidget extends StatelessWidget {
  final CarEntity car;

  const HomeCarDetailsWidget({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(car.title!, style: context.text.bodyMedium),
                Spacer(),
                SvgPicture.asset(AppImages.shareIcon),
                SizedBox(width: 2.w),
                SvgPicture.asset(AppImages.heartIcon),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(AppImages.locationIcon),
                SizedBox(width: 2.w),
                Text(car.address!, style: context.text.bodySmall),
                Spacer(),
                SvgPicture.asset(AppImages.timerIcon),
                SizedBox(width: 2.w),
                Text(car.lastUpdate!, style: context.text.bodySmall),
              ],
            ),
            Row(
              children: [
                Text(
                  car.price!,
                  style: context.text.titleMedium!.copyWith(
                    color: context.colors.primary,
                  ),
                ),
                Spacer(),
                Text(car.viewCount.toString(), style: context.text.bodySmall),
                SizedBox(width: 2.w),
                SvgPicture.asset(AppImages.eyeIcon),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

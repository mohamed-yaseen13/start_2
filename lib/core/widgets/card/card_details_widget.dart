import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/models/card_entity.dart';

class CardDetailsWidget extends StatelessWidget {
  final CardEntity card;

  const CardDetailsWidget({super.key, required this.card});

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
                Text(card.title, style: context.text.bodyMedium),
                Spacer(),
                SvgPicture.asset(AppImages.shareIcon),
                SizedBox(width: 2.w),
                SvgPicture.asset(
                  card.isFavorited
                      ? AppImages.favoriteHeartIcon
                      : AppImages.heartIcon,
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(AppImages.locationIcon),
                SizedBox(width: 2.w),
                Text(card.address, style: context.text.bodySmall),
                Spacer(),
                SvgPicture.asset(AppImages.timerIcon),
                SizedBox(width: 2.w),
                Text(
                  card.lastUpdate,
                  style: context.text.bodySmall!.copyWith(fontSize: 11.sp),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  card.price,
                  style: context.text.titleMedium!.copyWith(
                    color: context.colors.primary,
                    fontSize: 13.sp,
                  ),
                ),
                Spacer(),
                Text(card.viewCount, style: context.text.bodySmall),
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

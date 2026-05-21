import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';
import 'package:start2/features/need/domain/entities/need_entity.dart';

class HomeNeedWidget extends StatelessWidget {
  final NeedEntity need;

  const HomeNeedWidget({super.key, required this.need});

  @override
  Widget build(BuildContext context) {
    final style = context.text.bodyMedium!.copyWith(fontSize: 16.sp);
    return Container(
      width: double.infinity,
      height: 182.h,
      margin: EdgeInsets.only(bottom: 8.h, right: 4.w, left: 4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFD4E0EB),
            blurRadius: 5.r,
            spreadRadius: 0,
            offset: Offset(0.w, 1.23.h),
          ),
        ],
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(need.description!, style: style),
                Spacer(),
                SvgPicture.asset(AppImages.shareIcon),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                SvgPicture.asset(AppImages.dollarIcon),
                SizedBox(width: 8.w),
                Text(
                  LanguageProvider.translate('home', 'price'),
                  style: style.copyWith(color: context.colors.primary),
                ),
                SizedBox(width: 8.w),
                Text(need.price!, style: style),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SvgPicture.asset(AppImages.whatsappIcon),
                SizedBox(width: 12.w),
                SvgPicture.asset(AppImages.phoneIcon),
                Spacer(),
                SvgPicture.asset(AppImages.timerIcon),
                SizedBox(width: 8.w),
                Text(need.updatedAt!, style: style.copyWith(fontSize: 14.sp)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

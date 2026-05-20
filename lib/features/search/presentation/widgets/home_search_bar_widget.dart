import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class HomeSearchBarWidget extends StatelessWidget {
  const HomeSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // go to search page
      },
      child: Container(
        width: 274.w,
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFD4E0EB),
              blurRadius: 20.r,
              spreadRadius: 0,
              offset: Offset(0.w, 2.h),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Center(
            child: Row(
              children: [
                SvgPicture.asset(AppImages.searchIcon),
                SizedBox(width: 12.w),
                Text(
                  LanguageProvider.translate('home', 'search'),
                  style: context.text.bodyMedium,
                ),
                Spacer(),
                SvgPicture.asset(AppImages.filterIcon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

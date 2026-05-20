import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';

class HomeNotificationBellWidget extends StatelessWidget {
  const HomeNotificationBellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.w,
      height: 42.h,
      decoration: BoxDecoration(
        color: context.colors.primary.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Stack(
          children: [
            SvgPicture.asset(AppImages.notificationIcon),
            Positioned(
              top: 2.h,
              right: 2.w,
              child: SvgPicture.asset(AppImages.redIcon),
            ),
          ],
        ),
      ),
    );
  }
}

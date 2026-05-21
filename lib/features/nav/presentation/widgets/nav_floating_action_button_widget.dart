import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/constants/app_images.dart';

class NavFloatingActionButtonWidget extends StatelessWidget {
  const NavFloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, right: 12.w),
      child: Container(
        width: 64.w,
        height: 64.h,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Padding(
          padding: EdgeInsets.all(6.r),
          child: FloatingActionButton(
            heroTag: 'nav_fab',
            elevation: 0,
            shape: const CircleBorder(),
            onPressed: () {},
            child: SvgPicture.asset(AppImages.navFloatingActionButtonIcon),
          ),
        ),
      ),
    );
  }
}

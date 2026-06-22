import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationOrPriceContainerWidget extends StatelessWidget {
  final Widget child;

  const LocationOrPriceContainerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
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
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 8.w),
        child: Center(child: child),
      ),
    );
  }
}

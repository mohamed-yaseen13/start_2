import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/Theme/app_theme.dart';

class CarDescWidget extends StatelessWidget {
  final String title;
  final String desc;

  const CarDescWidget({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.text.bodyMedium!.copyWith(fontSize: 16.sp)),
        SizedBox(height: 8.h),
        Text(desc, style: context.text.bodySmall, maxLines: 20),
      ],
    );
  }
}

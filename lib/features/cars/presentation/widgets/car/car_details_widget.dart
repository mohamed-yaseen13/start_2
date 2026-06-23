import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start2/core/theme/app_theme.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class CarDetailsWidget extends StatelessWidget {
  final CarDetailsEntity entity;

  const CarDetailsWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colors.primary.withAlpha(25),
          ),
          child: Center(child: SvgPicture.asset(entity.icon)),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (entity.title != null)
                Text(
                  LanguageProvider.translate('car', entity.title!),
                  style: context.text.bodyMedium!.copyWith(
                    color: Color(0xFF808D9E),
                  ),
                ),
              SizedBox(height: 4.h),
              Text(
                entity.desc,
                style: context.text.bodyMedium!.copyWith(fontSize: 16.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

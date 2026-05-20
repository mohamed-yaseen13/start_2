import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';

class HomeCarImageWidget extends StatelessWidget {
  final CarEntity car;

  const HomeCarImageWidget({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      height: 180.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        image: DecorationImage(
          image: AssetImage(car.images![0]),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Spacer(),
              Container(
                width: 42.w,
                height: 22.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                  color: context.colors.primary,
                ),
                child: Center(
                  child: Text(car.type!, style: context.text.bodyMedium),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';
import 'package:start2/features/cars/presentation/widgets/home_car_details_widget.dart';
import 'package:start2/features/cars/presentation/widgets/home_car_image_widget.dart';

class HomeCarWidget extends StatelessWidget {
  final CarEntity car;

  const HomeCarWidget({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // car details
      },
      child: Container(
        width: 180.w,
        height: 285.h,
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
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            HomeCarImageWidget(car: car),
            SizedBox(height: 8.h),
            HomeCarDetailsWidget(car: car),
          ],
        ),
      ),
    );
  }
}

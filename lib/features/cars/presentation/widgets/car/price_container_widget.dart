import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/widgets/button_widget.dart';
import 'package:start2/features/cars/presentation/widgets/car/location_or_price_container_widget.dart';

class PriceContainerWidget extends StatelessWidget {
  final String price;

  const PriceContainerWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return LocationOrPriceContainerWidget(
      child: Row(
        children: [
          SvgPicture.asset(AppImages.dollarIcon),
          SizedBox(width: 8.w),
          Text(price),
          Spacer(),
          ButtonWidget(
            onTap: () {},
            text: 'compare',
            width: 70.w,
            height: 35.h,
          ),
        ],
      ),
    );
  }
}

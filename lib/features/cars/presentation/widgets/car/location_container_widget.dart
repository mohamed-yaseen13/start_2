import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/cars/presentation/widgets/car/location_or_price_container_widget.dart';

class LocationContainerWidget extends StatelessWidget {
  final String location;
  final String viewCount;

  const LocationContainerWidget({
    super.key,
    required this.location,
    required this.viewCount,
  });

  @override
  Widget build(BuildContext context) {
    final style = context.text.bodyMedium!.copyWith(fontSize: 16.sp);
    return LocationOrPriceContainerWidget(
      child: Row(
        children: [
          SvgPicture.asset(AppImages.carLocationIcon),
          SizedBox(width: 8.w),
          Text(location, style: style),
          Spacer(),
          Text(viewCount, style: style),
          SizedBox(width: 8.w),
          SvgPicture.asset(AppImages.eyeIcon),
        ],
      ),
    );
  }
}

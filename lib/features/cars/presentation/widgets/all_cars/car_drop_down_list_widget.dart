import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/providers/sort_provider.dart';
import 'package:start2/core/widgets/drop_down_widget.dart';
import 'package:start2/features/area/presentation/providers/area_provider.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';

class CarDropDownListWidget extends StatelessWidget {
  const CarDropDownListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final carProvider = context.watch<CarProvider>();
    final sortProvider = context.watch<SortProvider>();
    final areaProvider = context.watch<AreaProvider>();

    return Wrap(
      spacing: 12.w,
      runSpacing: 12.h,
      children: [
        DropDownWidget(dropDownClass: carProvider),
        DropDownWidget(dropDownClass: sortProvider),
        DropDownWidget(dropDownClass: areaProvider),
        SvgPicture.asset(AppImages.shareCarIcon, width: 35.w, height: 35.h),
      ],
    );
  }
}

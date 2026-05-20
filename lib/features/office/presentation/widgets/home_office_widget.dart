import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/features/office/domain/entities/office_entity.dart';

class HomeOfficeWidget extends StatelessWidget {
  final OfficeEntity office;

  const HomeOfficeWidget({super.key, required this.office});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          foregroundImage: AssetImage(office.marketImage!),
          radius: 30.r,
        ),
        SizedBox(height: 12.h),
        Text(office.marketName!),
      ],
    );
  }
}

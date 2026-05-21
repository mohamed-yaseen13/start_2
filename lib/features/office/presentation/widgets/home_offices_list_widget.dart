import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/widgets/see_all_widget.dart';
import 'package:start2/features/office/presentation/providers/office_provider.dart';
import 'package:start2/features/office/presentation/widgets/home_office_widget.dart';

class HomeOfficesListWidget extends StatelessWidget {
  const HomeOfficesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final officeProvider = context.watch<OfficeProvider>();

    return Column(
      children: [
        SeeAllWidget(text: 'offices', onTap: () {}),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(officeProvider.offices.length, (index) {
            return HomeOfficeWidget(office: officeProvider.offices[index]);
          }),
        ),
      ],
    );
  }
}

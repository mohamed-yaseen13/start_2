import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/widgets/all_data_header_widget.dart';
import 'package:start2/core/widgets/button_widget.dart';
import 'package:start2/core/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';
import 'package:start2/features/cars/presentation/widgets/all_cars/car_cars_list_widget.dart';
import 'package:start2/features/cars/presentation/widgets/all_cars/car_drop_down_list_widget.dart';
import 'package:start2/features/cars/presentation/widgets/all_cars/car_filter_tabs_list_widget.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class AllCarsPage extends StatelessWidget {
  const AllCarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final carProvider = context.watch<CarProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          LanguageProvider.translate('global', 'the_cars'),
          style: context.text.titleMedium,
        ),
        actions: [SizedBox(width: 48.w)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              CarFilterTabsListWidget(),
              SizedBox(height: 24.h),
              CarDropDownListWidget(),
              SizedBox(height: 24.h),
              AllDataHeaderWidget(entities: carProvider.headerEntities),
              SizedBox(height: 24.h),
              CarCarsListWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
        child: ButtonWidget(
          onTap: () {},
          text: 'add_ad',
          widgetAfterText: true,
          widget: Icon(Icons.add, color: Colors.white, size: 20.sp),
        ),
      ),
    );
  }
}

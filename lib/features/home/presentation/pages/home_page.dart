import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/features/banners/presentation/widgets/banners_widget.dart';
import 'package:start2/features/cars/presentation/widgets/home/home_cars_list_widget.dart';
import 'package:start2/features/estate/presentation/widgets/home_estates_list_widget.dart';
import 'package:start2/features/home/presentation/widgets/home_floating_action_button_widget.dart';
import 'package:start2/features/home/presentation/widgets/home_header_widget.dart';
import 'package:start2/features/home/presentation/widgets/home_service_list_widget.dart';
import 'package:start2/features/home/presentation/widgets/search_and_notification_row_widget.dart';
import 'package:start2/features/need/presentation/widgets/home_needs_list_widget.dart';
import 'package:start2/features/office/presentation/widgets/home_offices_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 64.h),
              HomeHeaderWidget(),
              SizedBox(height: 24.h),
              SearchAndNotificationRowWidget(),
              SizedBox(height: 24.h),
              HomeServiceListWidget(),
              SizedBox(height: 24.h),
              BannersWidget(),
              SizedBox(height: 24.h),
              HomeOfficesListWidget(),
              SizedBox(height: 24.h),
              HomeCarsListWidget(),
              SizedBox(height: 24.h),
              HomeEstatesListWidget(),
              SizedBox(height: 24.h),
              HomeNeedsListWidget(),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
      floatingActionButton: HomeFloatingActionButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

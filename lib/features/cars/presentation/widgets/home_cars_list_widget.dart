import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';
import 'package:start2/features/cars/presentation/widgets/home_car_widget.dart';

class HomeCarsListWidget extends StatelessWidget {
  const HomeCarsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final carProvider = context.watch<CarProvider>();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(carProvider.cars.length, (index) {
          return Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: HomeCarWidget(car: carProvider.cars[index]),
          );
        }),
      ),
    );
  }
}

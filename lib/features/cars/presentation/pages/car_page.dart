import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';
import 'package:start2/features/cars/presentation/widgets/car/car_app_bar.dart';
import 'package:start2/features/cars/presentation/widgets/car/car_desc_widget.dart';
import 'package:start2/features/cars/presentation/widgets/car/car_details_container_widget.dart';
import 'package:start2/features/cars/presentation/widgets/car/car_images_widget.dart';
import 'package:start2/features/cars/presentation/widgets/car/location_container_widget.dart';
import 'package:start2/features/cars/presentation/widgets/car/price_container_widget.dart';

class CarPage extends StatelessWidget {
  final CarEntity car;

  const CarPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    final carProvider = context.watch<CarProvider>();

    return Scaffold(
      appBar: CarAppBar(isFavorited: car.isFavorited!),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              CarImagesWidget(images: car.images!, type: car.type!),
              SizedBox(height: 24.h),
              LocationContainerWidget(
                location: car.cardAddress,
                viewCount: car.cardViewCount,
              ),
              SizedBox(height: 12.h),
              PriceContainerWidget(price: car.cardPrice),
              SizedBox(height: 24.h),
              CarDescWidget(title: car.cardTitle, desc: car.description!),
              SizedBox(height: 24.h),

              // any car will have same data so i must change this soon
              CarDetailsContainerWidget(
                title: 'ad_details',
                entities: carProvider.adDetails,
              ),
              SizedBox(height: 24.h),
              CarDetailsContainerWidget(
                title: 'car_details',
                entities: carProvider.carDetails,
              ),

              //
              SizedBox(height: 64.h),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';
import 'package:start2/features/cars/presentation/widgets/car/car_details_widget.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class CarDetailsContainerWidget extends StatelessWidget {
  final String title;
  final List<CarDetailsEntity> entities;

  const CarDetailsContainerWidget({
    super.key,
    required this.title,
    required this.entities,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LanguageProvider.translate('car', title),
          style: context.text.titleMedium,
        ),
        SizedBox(height: 12.h),
        Column(
          children: List.generate((entities.length / 2).toInt(), (index) {
            return Column(
              children: [
                Row(
                  children: [
                    CarDetailsWidget(entity: entities[index]),
                    Spacer(),
                    CarDetailsWidget(entity: entities[index + 1]),
                  ],
                ),
                Divider(color: Color(0xFFE9ECF2)),
              ],
            );
          }),
        ),
      ],
    );
  }
}

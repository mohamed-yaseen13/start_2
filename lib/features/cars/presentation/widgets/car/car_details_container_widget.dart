import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';
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
    final rows = entities.slices(2);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LanguageProvider.translate('car', title),
          style: context.text.titleMedium,
        ),
        SizedBox(height: 12.h),
        Column(
          children: rows.map((row) {
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(child: CarDetailsWidget(entity: row[0])),
                    row.length > 1
                        ? Expanded(child: CarDetailsWidget(entity: row[1]))
                        : SizedBox(),
                  ],
                ),
                Divider(color: Color(0xFFE9ECF2)),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}

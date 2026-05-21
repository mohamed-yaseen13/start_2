import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/models/app_entities.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class CarFilterTabWidget extends StatelessWidget {
  final Filter filter;

  const CarFilterTabWidget({super.key, required this.filter});

  @override
  Widget build(BuildContext context) {
    final carProvider = context.read<CarProvider>();
    final isSelected = carProvider.isSelected(filter);

    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: GestureDetector(
        onTap: () {
          carProvider.onSelect(filter);
        },
        child: Container(
          height: 32.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            color: isSelected
                ? context.colors.primary
                : context.colors.tertiary.withValues(alpha: 0.2),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Center(
              child: Text(
                LanguageProvider.translate('global', filter.name!),
                style: context.text.bodyMedium!.copyWith(
                  color: isSelected ? Colors.white : context.colors.secondary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start2/core/theme/app_theme.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class AllDataHeaderWidget extends StatelessWidget {
  final List<AllDataHeaderContainerWidgetEntity> entities;

  const AllDataHeaderWidget({super.key, required this.entities});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LanguageProvider.translate('global', 'sub_category'),
          style: context.text.titleMedium!.copyWith(fontSize: 14.sp),
        ),
        SizedBox(height: 18.h),
        Row(
          children: List.generate(entities.length, (index) {
            return AllDataHeaderContainerWidget(entity: entities[index]);
          }),
        ),
      ],
    );
  }
}

class AllDataHeaderContainerWidget extends StatelessWidget {
  final AllDataHeaderContainerWidgetEntity entity;

  const AllDataHeaderContainerWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final style = context.text.bodyMedium!.copyWith(
      fontSize: 12.sp,
      color: context.colors.primary,
    );
    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: GestureDetector(
        onTap: entity.onTap,
        child: Container(
          height: 42.h,
          decoration: BoxDecoration(
            color: context.colors.tertiary.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Center(
              child: Row(
                children: [
                  SvgPicture.asset(entity.icon),
                  SizedBox(width: 8.w),
                  Text(
                    LanguageProvider.translate('global', entity.firstText),
                    style: style,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    LanguageProvider.translate('global', entity.secondText),
                    style: style,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AllDataHeaderContainerWidgetEntity {
  final String icon;
  final String firstText;
  final String secondText;
  final Function() onTap;

  AllDataHeaderContainerWidgetEntity({
    required this.icon,
    required this.firstText,
    required this.secondText,
    required this.onTap,
  });
}

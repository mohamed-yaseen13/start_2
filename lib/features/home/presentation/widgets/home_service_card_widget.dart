import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/features/home/domain/entities/service_entity.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class HomeServiceCardWidget extends StatelessWidget {
  final ServiceEntity card;

  const HomeServiceCardWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 75.h,
      decoration: BoxDecoration(
        color: card.color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Image.asset(card.image),
          SizedBox(width: 12.w),
          Text(
            LanguageProvider.translate('home', card.text),
            style: context.text.headlineLarge!.copyWith(
              fontSize: 20.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

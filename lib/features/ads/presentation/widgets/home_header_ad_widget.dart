import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/theme/app_theme.dart';
import 'package:start2/features/ads/domain/entities/home_header_ad_entity.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class HomeHeaderAdWidget extends StatelessWidget {
  final HomeHeaderAdEntity ad;

  const HomeHeaderAdWidget({super.key, required this.ad});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 61.w,
          height: 42.h,
          decoration: BoxDecoration(
            color: ad.color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Center(child: SvgPicture.asset(ad.icon)),
        ),
        SizedBox(height: 8.h),
        Container(
          width: 61.w,
          height: 17.h,
          decoration: BoxDecoration(
            color: ad.color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Center(
            child: Text(
              LanguageProvider.translate('home', ad.text),
              style: context.text.bodyMedium!.copyWith(
                color: ad.color,
                fontSize: 8.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

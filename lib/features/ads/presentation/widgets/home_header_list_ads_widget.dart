import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/features/ads/presentation/providers/ads_provider.dart';
import 'package:start2/features/ads/presentation/widgets/home_header_ad_widget.dart';

class HomeHeaderListAdsWidget extends StatelessWidget {
  const HomeHeaderListAdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final adsProvider = context.watch<AdsProvider>();
    return Row(
      children: List.generate(adsProvider.homeHeaderAds.length, (index) {
        return Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: HomeHeaderAdWidget(ad: adsProvider.homeHeaderAds[index]),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/theme/app_theme.dart';
import 'package:start2/features/banners/presentation/providers/banners_provider.dart';

class BannersWidget extends StatelessWidget {
  const BannersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bannersProvider = context.watch<BannersProvider>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 120.h,
          child: PageView.builder(
            controller: bannersProvider.pageController,
            onPageChanged: (index) {
              bannersProvider.onPageChanged(index);
            },
            itemCount: bannersProvider.bannersList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // hit this banner's URL
                },
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(5.r),
                  child: Image.asset(bannersProvider.bannersList[index].image),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(bannersProvider.bannersList.length, (index) {
            final isActive = index == bannersProvider.currentPage;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: isActive ? 32.w : 4.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: isActive
                      ? context.colors.primary
                      : context.colors.secondary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

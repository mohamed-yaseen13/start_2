import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/Theme/app_theme.dart';

class SliderEntity {
  final CarouselSliderController carouselController;
  final int length;
  final int currentPage;
  final double redius;
  final double height;
  final Widget Function(int index) childBuilder;
  final Function(int) onPageChanged;
  final VoidCallback onTap;

  SliderEntity({
    required this.carouselController,
    required this.length,
    required this.childBuilder,
    required this.height,
    required this.redius,
    required this.onPageChanged,
    required this.currentPage,
    required this.onTap,
  });
}

class CarouselSliderWidget extends StatelessWidget {
  final SliderEntity sliderEntity;
  const CarouselSliderWidget({super.key, required this.sliderEntity});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          child: CarouselSlider.builder(
            carouselController: sliderEntity.carouselController,
            itemCount: sliderEntity.length,
            itemBuilder: (context, index, realIndex) {
              return GestureDetector(
                onTap: sliderEntity.onTap,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(
                    sliderEntity.redius.r,
                  ),

                  child: sliderEntity.childBuilder(index),
                ),
              );
            },
            options: CarouselOptions(
              height: sliderEntity.height.h,
              viewportFraction: 1.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 300),
              onPageChanged: (index, reason) {
                sliderEntity.onPageChanged(index);
              },
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(sliderEntity.length, (index) {
            final isActive = index == sliderEntity.currentPage;
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

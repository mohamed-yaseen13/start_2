import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/widgets/carousel_slider_widget.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';

class CarImagesWidget extends StatelessWidget {
  final List<String> images;
  final String type;

  const CarImagesWidget({super.key, required this.images, required this.type});

  @override
  Widget build(BuildContext context) {
    final carProvider = context.watch<CarProvider>();

    return CarouselSliderWidget(
      sliderEntity: SliderEntity(
        carouselController: carProvider.carouselController,
        length: images.length,
        childBuilder: (index) => CarImageWidget(
          image: images[index],
          type: type,
          onPrevious: carProvider.carouselController.previousPage,
          onNext: carProvider.carouselController.nextPage,
        ),
        height: 250,
        redius: 8,
        onPageChanged: (index) {
          carProvider.onImageChanged(index);
        },
        currentPage: carProvider.currentImage,
        onTap: carProvider.onImageTap,
      ),
    );
  }
}

class CarImageWidget extends StatelessWidget {
  final String image;
  final String type;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const CarImageWidget({
    super.key,
    required this.image,
    required this.type,
    required this.onPrevious,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Container(
                width: 60.w,
                height: 22.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                  color: context.colors.primary,
                ),
                child: Center(
                  child: Text(
                    type,
                    style: context.text.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 100.h),
          Row(
            children: [
              Container(
                width: 44.w,
                height: 44.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withAlpha(128),
                ),
                child: GestureDetector(
                  onTap: onPrevious,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 24.sp,
                    ),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: onNext,
                child: Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withAlpha(128),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 24.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

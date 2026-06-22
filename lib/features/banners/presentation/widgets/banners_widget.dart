import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/widgets/carousel_slider_widget.dart';
import 'package:start2/features/banners/presentation/providers/banners_provider.dart';

class BannersWidget extends StatelessWidget {
  const BannersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bannersProvider = context.watch<BannersProvider>();

    return CarouselSliderWidget(
      sliderEntity: SliderEntity(
        onTap: bannersProvider.onTap,
        carouselController: bannersProvider.carouselController,
        length: bannersProvider.bannersList.length,
        childBuilder: (index) =>
            Image.asset(bannersProvider.bannersList[index].image),
        height: 120,
        redius: 5,
        onPageChanged: (index) {
          bannersProvider.onPageChanged(index);
        },
        currentPage: bannersProvider.currentPage,
      ),
    );
  }
}

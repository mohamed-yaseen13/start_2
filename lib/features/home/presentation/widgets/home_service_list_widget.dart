import 'package:flutter/material.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/home/domain/entities/service_entity.dart';
import 'package:start2/features/home/presentation/widgets/home_service_card_widget.dart';

class HomeServiceListWidget extends StatelessWidget {
  const HomeServiceListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ServiceEntity> cards = [
      ServiceEntity(
        color: context.colors.primary,
        image: AppImages.estate,
        text: 'estates',
      ),
      ServiceEntity(
        color: Color(0xFFFEC700),
        image: AppImages.car,
        text: 'cars',
      ),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(cards.length, (index) {
        return HomeServiceCardWidget(card: cards[index]);
      }),
    );
  }
}

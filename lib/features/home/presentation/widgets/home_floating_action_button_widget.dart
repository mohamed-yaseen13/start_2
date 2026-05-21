import 'package:flutter/material.dart';
import 'package:start2/core/Theme/app_theme.dart';

class HomeFloatingActionButtonWidget extends StatelessWidget {
  const HomeFloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'home_fab',
      onPressed: () {
        // add car or estate ad
      },
      foregroundColor: context.colors.primary,
      shape: CircleBorder(),
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}

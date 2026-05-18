import 'package:flutter/material.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class TimerWidget extends StatelessWidget {
  final String counter;

  const TimerWidget({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Text(
            LanguageProvider.translate('auth', 'resend_otp'),
            style: context.text.bodyMedium!.copyWith(
              color: context.colors.primary,
            ),
          ),
        ),
        Text(
          counter,
          style: context.text.bodyMedium!.copyWith(
            color: context.colors.tertiary,
          ),
        ),
      ],
    );
  }
}

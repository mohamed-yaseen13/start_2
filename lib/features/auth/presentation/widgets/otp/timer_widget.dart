import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/helper_function/convert.dart';
import 'package:start2/features/auth/presentation/providers/otp/otp_operations.dart';
import 'package:start2/features/auth/presentation/providers/otp/otp_provider.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final otpProvider = context.read<OtpProvider>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            otpProvider.resend();
          },
          child: Text(
            LanguageProvider.translate('auth', 'resend_otp'),
            style: context.text.bodyMedium!.copyWith(
              color: otpProvider.counter == 0
                  ? context.colors.primary
                  : context.colors.secondary,
            ),
          ),
        ),
        Text(
          convertSecToMin(otpProvider.counter),
          style: context.text.bodyMedium!.copyWith(
            color: context.colors.tertiary,
          ),
        ),
      ],
    );
  }
}

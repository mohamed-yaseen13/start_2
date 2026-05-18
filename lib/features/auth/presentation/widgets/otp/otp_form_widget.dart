import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/helper_function/convert.dart';
import 'package:start2/core/widgets/validation_widget.dart';
import 'package:start2/features/auth/presentation/providers/otp_provider.dart';
import 'package:start2/features/auth/presentation/widgets/otp/timer_widget.dart';

class OtpFormWidget extends StatelessWidget {
  const OtpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final otpProvider = context.watch<OtpProvider>();
    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle: context.text.titleMedium!.copyWith(fontSize: 20.sp),
      decoration: BoxDecoration(
        color: context.colors.tertiary,
        shape: BoxShape.circle,
        border: Border.all(color: context.colors.tertiary),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.primary),
        shape: BoxShape.circle,
      ),
    );

    return Form(
      key: otpProvider.formKey,
      child: Column(
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Pinput(
              autofocus: true,
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: focusedPinTheme,
              separatorBuilder: (index) => SizedBox(width: 18.w),
              animationDuration: const Duration(milliseconds: 300),
              onCompleted: (value) => otpProvider.otpController.text = value,
              controller: otpProvider.otpController,
            ),
          ),
          ValidationWidget(
            conditions: [
              {
                'value': otpProvider.otpController.text.length != 4,
                'text': 'otp_invalid',
              },
            ],
          ),
          SizedBox(height: 12.h),
          TimerWidget(counter: convertSecToMin(otpProvider.counter)),
        ],
      ),
    );
  }
}

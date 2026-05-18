import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/widgets/button_widget.dart';
import 'package:start2/features/auth/presentation/providers/login_operations.dart';
import 'package:start2/features/auth/presentation/providers/login_provider.dart';

class LoginBottomNavigationBarWidget extends StatelessWidget {
  const LoginBottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.watch<LoginProvider>();
    final color = context.colors.primary;
    final text = context.text.titleMedium;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: SvgPicture.asset(AppImages.splashBottom),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 48.h, top: 190.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: loginProvider.loginInputs[0].controller,
                  builder: (context, value, _) {
                    final isReady =
                        value.text.length >= 9 && loginProvider.isAcceptTerms;
                    return ButtonWidget(
                      onTap: () {
                        loginProvider.submit();
                      },
                      text: 'confirm',
                      textStyle: text!.copyWith(color: Colors.white),
                      color: isReady ? null : Color(0xFFAAAAAA),
                    );
                  },
                ),
                SizedBox(height: 24.h),
                ButtonWidget(
                  onTap: () {},
                  text: 'guest',
                  color: Colors.transparent,
                  borderColor: color,
                  textStyle: text!.copyWith(color: color),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/widgets/button_widget.dart';
import 'package:start2/core/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:start2/features/auth/presentation/providers/otp_operations.dart';
import 'package:start2/features/auth/presentation/providers/otp_provider.dart';
import 'package:start2/features/auth/presentation/widgets/auth_header_widget.dart';
import 'package:start2/features/auth/presentation/widgets/otp/otp_form_widget.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final otpProvider = context.watch<OtpProvider>();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            AuthHeaderWidget(title: 'otp', desc: 'enter_otp'),
            SizedBox(height: 24.h),
            OtpFormWidget(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
        child: ButtonWidget(
          onTap: () {
            otpProvider.checkCode();
          },
          text: 'send',
        ),
      ),
    );
  }
}

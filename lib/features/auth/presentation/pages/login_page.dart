import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/features/auth/presentation/widgets/auth_header_widget.dart';
import 'package:start2/features/auth/presentation/widgets/login/login_bottom_navigation_bar_widget.dart';
import 'package:start2/features/auth/presentation/widgets/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 64.h),
            AuthHeaderWidget(title: 'hi', desc: 'enter_your_phone'),
            SizedBox(height: 24.h),
            LoginForm(),
          ],
        ),
      ),
      bottomNavigationBar: LoginBottomNavigationBarWidget(),
    );
  }
}

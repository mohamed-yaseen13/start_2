import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/widgets/button_widget.dart';
import 'package:start2/core/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:start2/core/widgets/upload_profile_image_widget.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_operations.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_provider.dart';
import 'package:start2/features/auth/presentation/widgets/auth_header_widget.dart';
import 'package:start2/features/auth/presentation/widgets/profile/profile_form.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profileProvider = context.watch<ProfileProvider>();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              AuthHeaderWidget(title: 'complete', desc: 'complete_data'),
              SizedBox(height: 24.h),
              Center(child: UploadProfileImageWidget()),
              SizedBox(height: 24.h),
              ProfileForm(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
        child: ButtonWidget(
          onTap: () {
            profileProvider.submit();
          },
          text: 'confirm',
        ),
      ),
    );
  }
}

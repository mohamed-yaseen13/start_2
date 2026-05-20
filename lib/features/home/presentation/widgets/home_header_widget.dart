import 'package:flutter/material.dart';
import 'package:start2/features/ads/presentation/widgets/home_header_list_ads_widget.dart';
import 'package:start2/features/auth/presentation/widgets/profile/home_user_avatar_widget.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [HomeUserAvatarWidget(), Spacer(), HomeHeaderListAdsWidget()],
    );
  }
}

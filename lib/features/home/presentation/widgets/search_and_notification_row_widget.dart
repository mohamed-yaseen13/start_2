import 'package:flutter/material.dart';
import 'package:start2/features/notifications/presentation/widgets/home_notification_bell_widget.dart';
import 'package:start2/features/search/presentation/widgets/home_search_bar_widget.dart';

class SearchAndNotificationRowWidget extends StatelessWidget {
  const SearchAndNotificationRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [HomeSearchBarWidget(), Spacer(), HomeNotificationBellWidget()],
    );
  }
}

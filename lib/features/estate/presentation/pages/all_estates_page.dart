import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class AllEstatesPage extends StatelessWidget {
  const AllEstatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LanguageProvider.translate('global', 'the_estates'),
          style: context.text.titleMedium,
        ),
        actions: [SizedBox(width: 48.w)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}

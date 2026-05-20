import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/features/ads/presentation/providers/ads_provider.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_provider.dart';
import 'package:start2/features/auth/presentation/providers/otp/otp_provider.dart';
import 'package:start2/features/banners/presentation/providers/banners_provider.dart';
import 'package:start2/features/nav/presentation/providers/nav_bar_provider.dart';
import 'package:start2/features/office/presentation/providers/office_provider.dart';
import 'package:start2/injection_container.dart';
import 'core/Theme/theme_provider.dart';
import 'core/models/progress_provider.dart';
import 'features/auth/presentation/providers/login/login_provider.dart';
import 'features/language/presentation/provider/language_provider.dart';
import 'features/splash_screen/presentation/providers/splash_provider.dart';

class AppProviders extends StatelessWidget {
  const AppProviders({super.key, required this.child, required this.language});
  final Widget child;
  final LanguageProvider language;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => language),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => ProgressProvider()),
        ChangeNotifierProvider(create: (_) => OtpProvider(sl.get())),
        ChangeNotifierProvider(create: (_) => ProfileProvider(sl.get())),
        ChangeNotifierProvider(create: (_) => NavBarProvider()),
        ChangeNotifierProvider(create: (_) => AdsProvider()),
        ChangeNotifierProvider(create: (_) => BannersProvider()),
        ChangeNotifierProvider(create: (_) => OfficeProvider()),
      ],
      child: child,
    );
  }
}

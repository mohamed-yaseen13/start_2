import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_operations.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_provider.dart';
import 'package:start2/features/nav/presentation/providers/nav_bar_provider.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helper_function/helper_function.dart';
import '../../../../core/helper_function/prefs.dart';
import '../../../auth/presentation/providers/login/login_provider.dart';

class SplashProvider extends ChangeNotifier {
  void startApp() async {
    await Future.wait([
      // Provider.of<SettingsProvider>(Constants.globalContext(), listen: false).getSettings(),
      // Provider.of<CategoriesProvider>(Constants.globalContext(), listen: false).refresh(),
      // Provider.of<CityProvider>(Constants.globalContext(), listen: false).getCities(),
      Constants.globalContext().read<ProfileProvider>().getProfile(),
    ]);
    await delay(3000);
    // isEndAnimation= true;
    // var settingsProvider = Provider.of<SettingsProvider>(Constants.globalContext(),listen: false);
    // SettingsEntity? settings = settingsProvider.settingsEntity;
    // PackageInfo packageInfo = await PackageInfo.fromPlatform();
    // if(int.parse(packageInfo.buildNumber)<settings!.version){
    //   await updateDialog(settings.mustUpdate);
    //   if(settings.mustUpdate){
    //     return;
    //   }
    // }

    String? login = sharedPreferences.getString('token');
    if (login != null) {
      Constants.globalContext().read<NavBarProvider>().goTo();
    } else {
      Constants.globalContext().read<LoginProvider>().goTo();
    }
    //     Provider.of<AuthProvider>(Constants.globalContext(),listen: false).getProfile(fromSplash: true);
    // }else{
    //   Provider.of<AuthProvider>(Constants.globalContext(), listen: false).goToLoginPage();
    // }
  }
}

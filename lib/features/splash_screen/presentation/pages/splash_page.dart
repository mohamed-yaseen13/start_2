import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/constants/app_images.dart';
import '../../../../core/Theme/app_system_ui.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helper_function/helper_function.dart';
import '../providers/splash_provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await delay(100);
      Provider.of<SplashProvider>(
        Constants.globalContext(),
        listen: false,
      ).startApp();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: AppSystemUi.light(),
        child: Container(
          color: Colors.white,
          width: 1.sw,
          height: 1.sh,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(AppImages.splashTop),
              ),
              Positioned(
                top: 279.h,
                left: 64.w,
                child: SvgPicture.asset(AppImages.splashCenter),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: SvgPicture.asset(AppImages.splashBottom),
              ),
              Positioned(
                bottom: 0,
                right: 5.w,
                child: Image.asset(AppImages.splashCar),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

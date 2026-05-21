import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';
import 'package:start2/features/nav/domain/entities/nav_item_entity.dart';
import 'package:start2/features/nav/presentation/providers/nav_bar_provider.dart';
import 'package:start2/features/nav/presentation/widgets/nav_floating_action_button_widget.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final navBarProvider = context.watch<NavBarProvider>();
    final List<NavItemEntity> items = navBarProvider.navItems;

    return Scaffold(
      body: items[navBarProvider.currentIndex].page,
      floatingActionButton: NavFloatingActionButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 75.h,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(items.length, (index) {
            final item = items[index];
            final isActive = navBarProvider.currentIndex == index;
            if (index == 2) return SizedBox();
            return InkWell(
              onTap: () => navBarProvider.setIndex(index),
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      item.icon,
                      colorFilter: ColorFilter.mode(
                        isActive ? context.colors.primary : Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      LanguageProvider.translate("navbar", item.title),
                      style: context.text.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: isActive ? context.colors.primary : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

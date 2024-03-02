import 'package:flutter/material.dart';
import 'package:promilo_task/Constants/colors.dart';
import 'package:promilo_task/Features/Bottom%20Nav/Services/bottom_nav_services.dart';
import 'package:provider/provider.dart';

class NavigationMenu extends StatelessWidget {
  static const routeName = 'nav-bar-Screen';
  const NavigationMenu({super.key});

  final selectedColor = AppColors.navBarColor;

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavService>(
      builder: (context, provider, child) => Scaffold(
        body: provider.screens[provider.screenIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: List.generate(
            5,
            (index) => BottomNavigationBarItem(
              icon: Icon(
                provider.getIconsForIndex(index),
              ),
              label: provider.getLabelForIndex(index),
            ),
          ),
          currentIndex: provider.screenIndex,
          selectedItemColor: selectedColor,
          showUnselectedLabels: true,
          elevation: 0,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedItemColor: AppColors.blackColor,
          onTap: (index) {
            provider.setIndex = index;
          },
        ),
      ),
    );
  }
}

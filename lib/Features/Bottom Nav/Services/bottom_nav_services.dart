import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:promilo_task/Features/Home/Screens/home_screen.dart';

class BottomNavService extends ChangeNotifier {
  List<Widget> screens = const [
    SizedBox(),
    SizedBox(),
    MeetUpScreen(),
    SizedBox(),
    SizedBox()
  ];

  int screenIndex = 2;

  // Set current index of Nav bar
  set setIndex(int index) {
    screenIndex = index;
    notifyListeners();
  }

  // Set icons
  IconData getIconsForIndex(int index) {
    switch (index) {
      case 0:
        return Iconsax.home;

      case 1:
        return Iconsax.data;

      case 2:
        return Iconsax.frame;

      case 3:
        return Iconsax.filter_edit;

      case 4:
        return Iconsax.user;
      default:
        return Icons.error;
    }
  }

  // Set Label Text
  getLabelForIndex(int index) {
    switch (index) {
      case 0:
        return 'Home';

      case 1:
        return 'Prolet';

      case 2:
        return 'Meetup';

      case 3:
        return 'Explore';

      case 4:
        return 'Accont';
      default:
        return 'Error';
    }
  }
}

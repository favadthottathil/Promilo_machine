 import 'package:flutter/material.dart';
import 'package:promilo_task/Constants/global_variable.dart';

buildPageIndicator(int currentPage) {
    List<Widget> indicators = [];

    for (var i = 0; i < meetUpsImages.length; i++) {
      indicators.add(Container(
        width: 10,
        height: 10,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentPage == i ? Colors.black : Colors.grey,
        ),
      ));
    }
    return indicators;
  }
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

buildIcons(int index) {
    switch (index) {
      case 0:
        return const Icon(Iconsax.document_download);
      case 1:
        return const Icon(Iconsax.save_2);
      case 2:
        return const Icon(Icons.favorite_outline_rounded);
      case 3:
        return const Icon(Iconsax.box);
      case 4:
        return const Icon(Iconsax.star);
      case 5:
        return const Icon(Iconsax.share);

      default:
        return const Icon(Icons.error);
    }
  }
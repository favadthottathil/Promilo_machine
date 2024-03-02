import 'package:flutter/material.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
    required this.social,
  });

  final List<String> social;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: social
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.only(left: 5),
                child: Image.asset(e),
              ),
            ),
          )
          .toList(),
    );
  }
}
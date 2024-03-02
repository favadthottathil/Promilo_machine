import 'package:flutter/material.dart';
import 'package:promilo_task/Constants/global_variable.dart';

class DescriptionImage extends StatelessWidget {
  const DescriptionImage({
    super.key,
    required this.size, required this.onPageChanged,
  });

  final Size size;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.35,
      width: size.width,
      child: PageView.builder(
        clipBehavior: Clip.antiAlias,
        onPageChanged: onPageChanged,
        itemCount: descriptionImages.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    descriptionImages[index],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:promilo_task/Constants/global_variable.dart';

class PopularMeetupCard extends StatelessWidget {
  const PopularMeetupCard({
    super.key,
    required this.onPageChanged,
  });

  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        itemCount: meetUpsImages.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    meetUpsImages[index],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: const Stack(
              children: [
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Text(
                    'Popular Meetsups \n in India',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:promilo_task/Features/Home/Widgets/custom_clipper.dart';
import 'package:promilo_task/Features/Meetup%20Description/Screens/description_screen.dart';

class TopTrendingMeetups extends StatelessWidget {
  const TopTrendingMeetups({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, DescriptionScreen.routeName),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 10),
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('Assets/meetup-2.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ClipPath(
              clipper: RPSCustomClipper(),
              child: Container(
                height: 140,
                width: 100,
                padding: const EdgeInsets.only(top: 30),
                color: Colors.white,
                child: Center(
                  child: Text(
                    '0${index + 1}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

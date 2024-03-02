import 'package:flutter/material.dart';
import 'package:promilo_task/Constants/global_variable.dart';
import 'package:promilo_task/Features/Home/Widgets/build_page_indicator.dart';
import 'package:promilo_task/Features/Meetup%20Description/Widgets/build_icons.dart';
import 'package:promilo_task/Features/Meetup%20Description/Widgets/description_image.dart';
import 'package:promilo_task/Features/Meetup%20Description/Widgets/description_info.dart';
import 'package:promilo_task/Features/Meetup%20Description/Widgets/meetup_rating.dart';
import 'package:share_plus/share_plus.dart';

class DescriptionScreen extends StatefulWidget {
  static const routeName = 'description-screen';
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: const Text(
          'Description',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.42,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            6,
                            (index) {
                              var ontap = () {};

                              if (index == 5) {
                                ontap = () {
                                  Share.share('https://promilo.com/public/home');
                                };
                              }

                              return IconButton(
                                onPressed: ontap,
                                icon: buildIcons(index),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  DescriptionImage(
                    size: size,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                  ),
                  Positioned(
                    bottom: 70,
                    left: 170,
                    child: Row(
                      children: buildPageIndicator(currentPage),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const MeetupRating(),
            const DescriptionInfo(),
            height20,
          ],
        ),
      ),
    );
  }
}

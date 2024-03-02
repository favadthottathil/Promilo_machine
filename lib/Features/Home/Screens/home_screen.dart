import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:promilo_task/Constants/global_variable.dart';
import 'package:promilo_task/Features/Home/Widgets/build_page_indicator.dart';
import 'package:promilo_task/Features/Home/Widgets/popular_meetup_card.dart';
import 'package:promilo_task/Features/Home/Widgets/top_trending_meetups.dart';
import 'package:promilo_task/Features/Home/Widgets/trending_popular_cards.dart';

class MeetUpScreen extends StatefulWidget {
  static const routeName = 'meetup-screen';

  const MeetUpScreen({super.key});

  @override
  State<MeetUpScreen> createState() => _MeetUpScreenState();
}

class _MeetUpScreenState extends State<MeetUpScreen> {
  PageController pageController = PageController();

  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Individual Meetup',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.search_normal),
                  suffixIcon: const Icon(Iconsax.microphone),
                  hintText: 'Search',
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            height20,
            PopularMeetupCard(
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildPageIndicator(currentPage),
            ),
            height20,
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Trending Popular People',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const TrendingPopularPeopleCard(),
            height20,
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return TopTrendingMeetups(index: index);
                },
              ),
            ),
            height20,
          ],
        ),
      ),
    );
  }
}

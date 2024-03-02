import 'package:flutter/material.dart';

class TrendingPopularPeopleCard extends StatelessWidget {
  const TrendingPopularPeopleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all()),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('Assets/author_icon.jpg'),
                    ),
                    title: Text(
                      'Author',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text('1,028 Meetups'),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Colors.grey),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('Assets/author.jpg'),
                          radius: 25,
                        ),
                        Positioned(
                          left: 30,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('Assets/author.jpg'),
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          left: 60,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('Assets/author.jpg'),
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          left: 90,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('Assets/author.jpg'),
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          left: 120,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('Assets/author.jpg'),
                            radius: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            fixedSize: const Size(110, 20)),
                        child: const Text(
                          'See More',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
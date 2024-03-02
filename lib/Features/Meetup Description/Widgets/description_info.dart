import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DescriptionInfo extends StatelessWidget {
  const DescriptionInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const Text(
            'Actor Name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text('Indian Actress'),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(Iconsax.clock),
              SizedBox(width: 10),
              Text('Duration 20 Mins'),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Icon(Iconsax.wallet),
              SizedBox(width: 10),
              Text('Total Average Fees \$9,999'),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'About',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Text(
            'From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just one session out on the waves. So, you may find yourself wondering what are the benefits of going on a surf camp.',
            softWrap: true,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'See More',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

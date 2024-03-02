import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MeetupRating extends StatelessWidget {
  const MeetupRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          const Icon(Iconsax.save_21),
          const Text('1034'),
          const SizedBox(width: 5),
          const Icon(Icons.favorite_border),
          const SizedBox(width: 5),
          const Text('1034'),
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 20,
              width: 120,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  5,
                  (index) {
                    Color iconColor = Colors.teal;
    
                    if (index == 3) {
                      iconColor = Colors.teal[200]!;
                    } else if (index == 4) {
                      iconColor = Colors.white;
                    }
    
                    return Icon(
                      Iconsax.star1,
                      size: 16,
                      color: iconColor,
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            '3.2',
            style: TextStyle(
              color: Colors.teal[800],
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
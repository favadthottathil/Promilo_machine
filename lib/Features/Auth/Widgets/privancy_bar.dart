import 'package:flutter/material.dart';
import 'package:promilo_task/Constants/global_variable.dart';
import 'package:promilo_task/Features/Auth/Widgets/custom_divider.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "By continuing,you agree to",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: "Promilo's",
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                TextSpan(
                  text: '  Terms of Use & Privacy Policy',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
        height20,
        const CustomDivider(),
        const SizedBox(height: 5),
      ],
    );
  }
}

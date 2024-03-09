import 'package:flutter/material.dart';
import 'package:snap_insta_ui/components/app_button.dart';

class CardItem extends StatelessWidget {
  final String title;
  final Color color;

  const CardItem({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // logos and branding
                Row(
                  children: [
                    // logo-1
                    CircleAvatar(
                      child: Image.asset(
                        "assets/logos/logo1.png",
                      ),
                    ),
                    const SizedBox(width: 10),
                    // arrow icon
                    const Icon(Icons.arrow_right_alt, color: Colors.black),
                    const SizedBox(width: 10),
                    // logo-2
                    CircleAvatar(
                      child: Image.asset("assets/logos/logo2.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // title
                // make the last 3 words "notify the user." bold
                // To acheive this we use TextSpan
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: title.replaceFirst("notify the user.", ""),
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const TextSpan(
                        text: "notify the user",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // button
                const AppButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

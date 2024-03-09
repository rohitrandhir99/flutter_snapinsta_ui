import 'package:flutter/material.dart';
import 'package:snap_insta_ui/components/card_item.dart'; // card_item component
import 'package:snap_insta_ui/data/data.dart'; // custom data

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                const Text(
                  "Add Stock integration",
                  style: TextStyle(
                    fontSize: 48,
                  ),
                ),
                const SizedBox(height: 16),
                // scrollable cards
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return CardItem(
                      title: item["title"],
                      color: item["background"],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

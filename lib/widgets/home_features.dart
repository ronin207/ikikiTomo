import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'navigational_button.dart';

import '/screens/active_analytics.dart';
import '/screens/chat_navigator.dart';

class FeaturesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).size.width * 0.05;
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: Text(
              'おすすめ機能', // "Recommended Features" in Japanese
              style: TextStyle(
                fontSize: 24.0, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Adjust the font weight as needed
                color: theme.colorScheme.onPrimary, // Use the theme's text color
              ),
            ),
        ),
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: padding,
          mainAxisSpacing: padding,
          padding: EdgeInsets.fromLTRB(padding, 0, padding, padding), // Reduced top padding
          childAspectRatio: 1, // Square cells
          shrinkWrap: true, // Needed if GridView is inside an unbounded space
          physics: ScrollPhysics(), // Use this to allow scrolling within GridView
          children: <Widget>[
            NavigationButton(
              label: 'スクリーンタイム',
              icon: Icons.timer,
              onPressed: () {
                Navigator.of(context).push(SwipeablePageRoute(
                  builder: (context) => BarChartSample6(),
                ));
              },
            ),
            NavigationButton(
              label: 'チャット',
              icon: Icons.chat,
              onPressed: () {
                Navigator.of(context).push(SwipeablePageRoute(
                  builder: (context) => ChatPage(),
                ));
              },
            ),
            // Add more buttons as needed
          ],
        ),
      ],
    );
  }
}

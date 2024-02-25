import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        // The leading widget is the first item on the left side of the AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // This line will navigate back to the previous page
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            DateChip(
                date: new DateTime(now.year, now.month, now.day - 5),
              ),
            const BubbleSpecialThree(
              text: 'Sure',
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),

            DateChip(
                date: new DateTime(now.year, now.month, now.day - 2),
              ),
            BubbleSpecialThree(
              text: "I tried. It's awesome!!!",
              color: theme.colorScheme.secondary,
              tail: true,
              isSender: true,
            ),
            const BubbleSpecialThree(
              text: "Thank you for trying out! Ask me a question.",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "Please remind me to take my medications at 15:00 hrs.",
              color: theme.colorScheme.secondary,
              tail: true,
              isSender: true,
            ),
            const BubbleSpecialThree(
              text: "Yes, I will remind you at 3pm.",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),

            DateChip(
                date: new DateTime(now.year, now.month, now.day),
              ),
            BubbleSpecialThree(
              text: "Good morning.",
              color: theme.colorScheme.secondary,
              tail: true,
              isSender: true,
            ),
            const BubbleSpecialThree(
              text: 'Good morning, what can I do for you today?',
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "How is the weather today?",
              color: theme.colorScheme.secondary,
              tail: true,
              isSender: true,
            ),
            const BubbleSpecialThree(
              text: "Today's weather is cloudy, with a temperature of 5°C. Chances of rain is at 60%.",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
          ],
        ),
      ),
    );
  }
}
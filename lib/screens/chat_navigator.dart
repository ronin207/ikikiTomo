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
                date: new DateTime(now.year, now.month, now.day - 2),
              ),

            const BubbleSpecialThree(
              text: 'Sure',
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
            DateChip(
                date: new DateTime(now.year, now.month, now.day - 1),
              ),
            BubbleSpecialThree(
              text: "I tried. It's awesome!!!",
              color: theme.colorScheme.secondary,
              tail: true,
              isSender: true,
            ),
          ],
        ),
      ),
    );
  }
}
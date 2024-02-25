import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '/widgets/home_features.dart';
import 'login_navigator.dart';

class HomePage extends StatelessWidget {
  final User user;

  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start of the cross axis
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              // '${user.email} ホーム',
              'Takumi ホーム',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 24, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // Adjust the font weight as needed
              ),
            ),
          ),

          // Adding an emoji to represent the state of the conversation
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
            child: Center(child: Text(
                '😊', // Choose your emoji here
                style: TextStyle(
                  fontSize: 160, // Adjust the emoji size as needed
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
            child: FeaturesList(),
          )
        ],
      ),
    );
  }
}
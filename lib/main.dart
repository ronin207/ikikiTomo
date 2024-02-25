import 'package:flutter/material.dart';
import 'package:myapp/screens/active_analytics.dart';
import 'package:myapp/screens/login_navigator.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import '/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme1,
      home: const BarChartSample6(),
    );
  }
}
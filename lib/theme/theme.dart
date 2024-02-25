import 'package:flutter/material.dart';

final ThemeData appTheme1 = ThemeData(
  // This is the theme of your application.
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF78866B), // Bamboo Green used as seed color for scheme generation
    primary: const Color(0xFF78866B), // Bamboo Green for primary color
    secondary: const Color(0xFFFFB7C5), // Cherry Blossom Pink for secondary color
    background: const Color(0xFFF4F1E6), // Rice Paper White for background color
    onPrimary: const Color(0xFF8B4513), // Earthenware Brown for text on primary color
    onSecondary: const Color(0xFF8B4513), // Earthenware Brown for text on secondary color
    surface: const Color(0xFFF4F1E6), // Rice Paper White for card and dialog backgrounds
    onBackground: const Color(0xFF8B4513), // Earthenware Brown for text on background color
    onError: const Color(0xFFDAA520), // Gold Leaf for error states
    brightness: Brightness.light, // Choose brightness level depending on your preference
  ),
  useMaterial3: true, // Enable Material 3 design
  scaffoldBackgroundColor: const Color(0xFFF4F1E6), // Rice Paper White for Scaffold background
);

final ThemeData appTheme2 = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF8A9A5B), // Moss Green used as seed color for scheme generation
    primary: const Color(0xFF8A9A5B), // Moss Green for primary color
    secondary: const Color(0xFFD77A61), // Koi Orange for secondary color
    background: const Color(0xFFD2B48C), // Sand Beige for background color
    onPrimary: const Color(0xFFD2B48C), // Sand Beige for text on primary color elements
    onSecondary: const Color(0xFFD2B48C), // Sand Beige for text on secondary color elements
    surface: const Color(0xFFD2B48C), // Sand Beige for surface color
    onBackground: const Color(0xFF8B8C7A), // Stone Grey for text on background color
    onError: const Color(0xFFD2B48C), // Sand Beige for text on error color elements
    brightness: Brightness.light,
  ),
  useMaterial3: true, // If you want to use Material 3 features
  scaffoldBackgroundColor: const Color(0xFFD2B48C), // Sand Beige for Scaffold background
);
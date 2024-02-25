import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const NavigationButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min, // Use the minimum space necessary
        mainAxisAlignment: MainAxisAlignment.center, // Center the icon and text vertically
        children: [
          Container(
            width: 100, // Define the size of the icon container
            height: 100,
            decoration: BoxDecoration(
              color: theme.colorScheme.background, // Background color
              shape: BoxShape.rectangle, // Change to a rectangle
              borderRadius: BorderRadius.circular(16), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  offset: Offset(0, 4), // Shadow position
                  blurRadius: 8, // Shadow blur radius
                ),
              ],
            ),
            alignment: Alignment.center, // Center the icon inside the container
            child: Icon(
              icon,
              size: 54, // Icon size
              color: theme.colorScheme.onPrimary, // Icon color
            ),
          ),
          SizedBox(height: 8), // Space between icon and text
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: theme.colorScheme.primary, // Text color
              fontSize: 16, // Font size
              fontWeight: FontWeight.bold, // Font weight
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Legend {
  final String name;
  final Color color;

  Legend({required this.name, required this.color});
}

class LegendWidget extends StatelessWidget {
  const LegendWidget({
    super.key,
    required this.name,
    required this.color,
  });

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          name,
          style: const TextStyle(
            color: Color(0xff757391),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class LegendListWidget extends StatelessWidget {
  const LegendListWidget({super.key, required this.legends});

  final List<Legend> legends;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: legends
        .map(
          (e) => LegendWidget(
            name: e.name,
            color: e.color,
          ),
        )
        .toList(),
    );
  }
}

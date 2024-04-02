import 'package:flutter/material.dart';

class IconTextItem extends StatelessWidget {
  const IconTextItem({super.key, required this.width, required this.icon, required this.title});

  final double width;
  final IconData icon;
  final String title;

  ///
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.25 * (width - 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.deepPurple, size: 24),
          Text(title, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

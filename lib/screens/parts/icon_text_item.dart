import 'package:flutter/material.dart';

class IconTextItem extends StatelessWidget {
  const IconTextItem({super.key, required this.width, required this.icon, required this.title, required this.isHiding});

  final double width;
  final IconData icon;
  final String title;
  final bool isHiding;

  ///
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.25 * (width - 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.deepPurple, size: 24),
          AnimatedOpacity(
              opacity: isHiding ? 0 : 1,
              duration: const Duration(milliseconds: 120),
              child: Align(alignment: Alignment.bottomCenter, child: Text(title, style: const TextStyle(fontSize: 16)))),
        ],
      ),
    );
  }
}

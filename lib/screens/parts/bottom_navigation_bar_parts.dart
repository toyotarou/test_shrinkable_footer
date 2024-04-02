import 'package:flutter/material.dart';

import '../../extensions/extensions.dart';
import 'icon_text_item.dart';

class BottomNavigationBarParts extends StatelessWidget {
  const BottomNavigationBarParts({super.key, required this.isHiding});

  final bool isHiding;

  ///
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: isHiding ? 70 : 100,
      color: const Color(0xFFFEEAE6),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextItem(width: context.screenSize.width, isHiding: isHiding, icon: Icons.home, title: 'Home'),
            IconTextItem(width: context.screenSize.width, isHiding: isHiding, icon: Icons.star, title: 'Favorite'),
            IconTextItem(width: context.screenSize.width, isHiding: isHiding, icon: Icons.favorite, title: 'Like'),
            IconTextItem(width: context.screenSize.width, isHiding: isHiding, icon: Icons.settings, title: 'Menu'),
          ],
        ),
      ),
    );
  }
}

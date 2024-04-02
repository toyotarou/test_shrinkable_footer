import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'parts/bottom_navigation_bar_parts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();

  bool isHiding = false;

  ///
  @override
  void initState() {
    super.initState();

    _listenScroll();
  }

  ///
  @override
  void dispose() {
    _scrollController.removeListener(() {});

    super.dispose();
  }

  ///
  void _listenScroll() {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        isHiding = false;
      } else {
        isHiding = true;
      }

      setState(() {});
    });
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarParts(isHiding: isHiding),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 50),
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                color: Colors.indigo,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 100),
                  Text(
                    'scroll footer shrink',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.unsplash.com/photo-1528164344705-47542687000d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1369&q=80',
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.unsplash.com/photo-1532236204992-f5e85c024202?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1372&q=80',
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.unsplash.com/photo-1493479874819-4303c36fa0f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.unsplash.com/photo-1463319611694-4bf9eb5a6e72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.unsplash.com/photo-1469998265221-245c7148df5d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

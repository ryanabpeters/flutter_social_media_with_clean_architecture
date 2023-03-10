import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Custom Nav Bar
class CustomNavBar extends StatelessWidget {
  /// Custom Nav Bar constructor
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      color: Colors.black,
      child: SizedBox(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <IconButton>[
            IconButton(
              onPressed: () {
                context.goNamed('feed');
              },
              iconSize: 30,
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                context.goNamed('discover');
              },
              iconSize: 30,
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.add_circle),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.message),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}

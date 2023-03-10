import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/custom_nav_bar.dart';

/// The Feed screen.
class FeedScreen extends StatelessWidget {
  /// The FeedScreen constructor
  const FeedScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/custom_nav_bar.dart';

/// Discover screen
class DiscoverScreen extends StatelessWidget {
  /// Discover Screen constructor
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/custom_nav_bar.dart';

/// The Discover screen.
class DiscoverScreen extends StatelessWidget {
  /// The DiscoverScreen constructor.
  const DiscoverScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../shared/presentation/widgets/custom_nav_bar.dart';

/// Feed Screen
class FeedScreen extends StatelessWidget {
  /// Feed Screen constructor
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

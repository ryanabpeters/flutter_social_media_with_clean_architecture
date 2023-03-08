import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/custom_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

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

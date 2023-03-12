import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/widgets.dart';

/// The Discover screen.
class DiscoverScreen extends StatelessWidget {
  /// The DiscoverScreen constructor.
  const DiscoverScreen({super.key});

  static const String _translationPath = 'discoverScreen';

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('$_translationPath.title').tr(),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

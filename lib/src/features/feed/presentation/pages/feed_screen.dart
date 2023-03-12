import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/widgets.dart';

/// The Feed screen.
class FeedScreen extends StatelessWidget {
  /// The FeedScreen constructor
  const FeedScreen({super.key});

  static const String _translationPath = 'feedScreen';

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

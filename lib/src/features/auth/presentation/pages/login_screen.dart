import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/widgets.dart';

/// The Login screen.
class LoginScreen extends StatelessWidget {
  /// The LoginScreen constructor.
  const LoginScreen({super.key});

  static const String _translationPath = 'loginScreen';

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('$_translationPath.title').tr(),
      ),
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            Spacer(flex: 3),
            CustomTextField(),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }

  /// Temporary test function for unit tests.
  int testFunction(final int number) {
    return number + 1;
  }
}

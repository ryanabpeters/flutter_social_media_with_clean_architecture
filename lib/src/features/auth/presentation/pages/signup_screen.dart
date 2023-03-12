import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// The Signup screen.
class SignupScreen extends StatelessWidget {
  /// The SignupScreen constructor.
  const SignupScreen({super.key});

  static const String _translationPath = 'signupScreen';

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('$_translationPath.title').tr(),
      ),
    );
  }
}

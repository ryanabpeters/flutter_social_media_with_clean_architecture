import 'package:flutter/material.dart';

/// The Login screen.
class LoginScreen extends StatelessWidget {
  /// The LoginScreen constructor.
  const LoginScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
    );
  }
}

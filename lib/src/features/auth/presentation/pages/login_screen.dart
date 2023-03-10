import 'package:flutter/material.dart';

/// Login screen
class LoginScreen extends StatelessWidget {
  /// Login screen constructor
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
    );
  }
}

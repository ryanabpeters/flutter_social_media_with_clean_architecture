import 'package:flutter/material.dart';

import 'src/config/app_router.dart';
import 'src/config/app_theme.dart';

void main() {
  runApp(const MyApp());
}

/// MyApp
class MyApp extends StatelessWidget {
  /// MyApp constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: CustomTheme().theme(),
      routerConfig: AppRouter().router,
    );
  }
}

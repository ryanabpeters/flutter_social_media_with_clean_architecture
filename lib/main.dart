import 'package:flutter/material.dart';

import 'src/config/app_router.dart';
import 'src/config/app_theme.dart';

void main() {
  runApp(const MyApp());
}

/// The class of the app.
class MyApp extends StatelessWidget {
  /// The MyApp constructor.
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: CustomTheme().theme(),
      routerConfig: AppRouter().router,
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

/// Stream used for redirects.
class GoRouterRefreshStream extends ChangeNotifier {
  /// The GoRouterRefreshStream constructor.
  GoRouterRefreshStream(final Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (final dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  Future<void> dispose() async {
    await _subscription.cancel();
    super.dispose();
  }
}

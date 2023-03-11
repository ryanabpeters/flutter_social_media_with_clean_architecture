import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/presentation/pages/login_screen.dart';
import '../features/auth/presentation/pages/signup_screen.dart';
import '../features/feed/presentation/pages/discover_screen.dart';
import '../features/feed/presentation/pages/feed_screen.dart';

/// The routing solution used for the entire app.
class AppRouter {
  // TODO(ryanpetersdev): Add the auth bloc as input.
  /// The AppRouter constructor.
  AppRouter();

  /// The app's router with route configuration and lists.
  late final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: 'feed',
        path: '/',
        builder: (final BuildContext context, final GoRouterState state) {
          return const FeedScreen();
        },
      ),
      GoRoute(
        name: 'discover',
        path: '/discover',
        builder: (final BuildContext context, final GoRouterState state) {
          return const DiscoverScreen();
        },
        routes: <GoRoute>[
          GoRoute(
            name: 'user',
            path: ':userId',
            builder: (final BuildContext context, final GoRouterState state) {
              return Container();
            },
          )
        ],
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (final BuildContext context, final GoRouterState state) {
          return const LoginScreen();
        },
        routes: <GoRoute>[
          GoRoute(
            name: 'signup',
            path: 'signup',
            builder: (final BuildContext context, final GoRouterState state) {
              return const SignupScreen();
            },
          ),
        ],
      ),
    ],
    /*
    TODO(ryanpetersdev): Redirect users to the login screen if they're not
     authenticated. Else, go to the feed screen.
     */
    // redirect:
  );
}

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

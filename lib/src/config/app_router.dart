import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_social_media_with_clean_architecture/src/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter_social_media_with_clean_architecture/src/features/auth/presentation/pages/signup_screen.dart';
import 'package:flutter_social_media_with_clean_architecture/src/features/feed/presentation/pages/discover_screen.dart';
import 'package:flutter_social_media_with_clean_architecture/src/features/feed/presentation/pages/feed_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  // TODO: Add the auth bloc as input.
  AppRouter();

  late final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: 'feed',
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const FeedScreen();
        },
      ),
      GoRoute(
        name: 'discover',
        path: '/discover',
        builder: (BuildContext context, GoRouterState state) {
          return const DiscoverScreen();
        },
        routes: [
          GoRoute(
            name: 'user',
            path: ':userId',
            builder: (BuildContext context, GoRouterState state) {
              return Container();
            },
          )
        ],
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
        routes: [
          GoRoute(
            name: 'signup',
            path: 'signup',
            builder: (BuildContext context, GoRouterState state) {
              return const SignupScreen();
            },
          )
        ],
      ),
    ],
    // TODO: Redirect users to the login screen if they're not authenticated. Else, go to the feed screen.
    // redirect:
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

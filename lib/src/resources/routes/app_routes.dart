import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/login_screen.dart';
import '../../features/auth/presentation/pages/signup_screen.dart';
import '../../features/feed/presentation/pages/discover_screen.dart';
import '../../features/feed/presentation/pages/feed_screen.dart';
import 'app_paths.dart';
import 'app_route_names.dart';

/// Resource class for storing app route constants.
class AppRoutes {
  /// This list contains all top level routes.
  static List<GoRoute> topLevelRoutes = <GoRoute>[
    feedRoute,
    discoverRoute,
    loginRoute,
  ];

  /// The discover screen route.
  static GoRoute discoverRoute = GoRoute(
    name: RouteNames.discoverRouteName,
    path: Path.discoverPath,
    builder: (final BuildContext context, final GoRouterState state) {
      return const DiscoverScreen();
    },
    routes: <GoRoute>[
      userRoute,
    ],
  );

  /// The feed screen route.
  static GoRoute feedRoute = GoRoute(
    name: RouteNames.feedRouteName,
    path: Path.feedPath,
    builder: (final BuildContext context, final GoRouterState state) {
      return const FeedScreen();
    },
  );

  /// The login screen route.
  static GoRoute loginRoute = GoRoute(
    name: RouteNames.loginRouteName,
    path: Path.loginPath,
    builder: (final BuildContext context, final GoRouterState state) {
      return const LoginScreen();
    },
    routes: <GoRoute>[
      signupRoute,
    ],
  );

  /// The signup screen route.
  static GoRoute signupRoute = GoRoute(
    name: RouteNames.signupRouteName,
    path: Path.signupPath,
    builder: (final BuildContext context, final GoRouterState state) {
      return const SignupScreen();
    },
  );

  /// The user screen route.
  static GoRoute userRoute = GoRoute(
    name: RouteNames.userRouteName,
    path: Path.userPath,
    builder: (final BuildContext context, final GoRouterState state) {
      return Container();
    },
  );
}

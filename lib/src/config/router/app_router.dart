import 'package:go_router/go_router.dart';

import '../../resources/routes/app_routes.dart';

/// The routing solution used for the entire app.
class AppRouter {
  // TODO(ryanpetersdev): Add the auth bloc as input.
  /// The AppRouter constructor.
  AppRouter();

  /// The app's router with route configuration and lists.
  late final GoRouter router = GoRouter(
    routes: AppRoutes.topLevelRoutes,
    /*
      TODO(ryanpetersdev): Redirect users to the login screen if they're not
       authenticated. Else, go to the feed screen.
    */
  );
}

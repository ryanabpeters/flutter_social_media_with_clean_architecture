part of 'widgets.dart';

/// The navigation bar used throughout the app.
class CustomNavBar extends StatelessWidget {
  /// The CustomNavBar constructor.
  const CustomNavBar({super.key});

  @override
  Widget build(final BuildContext context) {
    return BottomAppBar(
      notchMargin: AppDimensions.bottomAppBarNotchMargin,
      color: AppColors.appBottomBarColor,
      child: SizedBox(
        height: AppDimensions.bottomAppBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <IconButton>[
            _getFeedIconButton(context),
            _getDiscoverIconButton(context),
            _getPostIconButton(context),
            _getChatIconButton(context),
            _getUserIconButton(context),
          ],
        ),
      ),
    );
  }

  IconButton _buildIconButton(
    final BuildContext context, {
    required final IconData iconData,
    final String? routeName,
  }) {
    return IconButton(
      onPressed: routeName != null ? () => context.goNamed(routeName) : () {},
      iconSize: AppDimensions.bottomAppBarIconSize,
      icon: Icon(iconData),
    );
  }

  IconButton _getChatIconButton(final BuildContext context) {
    return _buildIconButton(
      context,
      iconData: Icons.message,
    );
  }

  IconButton _getDiscoverIconButton(final BuildContext context) {
    return _buildIconButton(
      context,
      routeName: RouteNames.discoverRouteName,
      iconData: Icons.search,
    );
  }

  IconButton _getFeedIconButton(final BuildContext context) {
    return _buildIconButton(
      context,
      routeName: RouteNames.feedRouteName,
      iconData: Icons.home,
    );
  }

  IconButton _getPostIconButton(final BuildContext context) {
    return _buildIconButton(
      context,
      iconData: Icons.add_circle,
    );
  }

  IconButton _getUserIconButton(final BuildContext context) {
    return _buildIconButton(
      context,
      iconData: Icons.person,
    );
  }
}

import 'package:flutter_social_media_with_clean_architecture/src/features/feed/presentation/pages/discover_screen.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../widget_test_helper.dart';

Future<void> main() async {
  await WidgetTestHelper.prepareAndTest(
    name: 'Open the Discover screen',
    test: feedTest,
    testWidget: const DiscoverScreen(),
  );
}

void feedTest() {
  expect(find.text('Discover'), findsOneWidget);
}

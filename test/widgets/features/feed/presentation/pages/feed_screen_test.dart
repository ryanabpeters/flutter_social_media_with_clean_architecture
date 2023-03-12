import 'package:flutter_social_media_with_clean_architecture/src/features/feed/presentation/pages/feed_screen.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../widget_test_helper.dart';

Future<void> main() async {
  await WidgetTestHelper.prepareAndTest(
    name: 'Open the Feed screen',
    test: feedTest,
    testWidget: const FeedScreen(),
  );
}

void feedTest() {
  expect(find.text('Feed'), findsOneWidget);
}

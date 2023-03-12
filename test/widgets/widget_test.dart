import 'package:flutter_test/flutter_test.dart';

import 'widget_test_helper.dart';

Future<void> main() async {
  await WidgetTestHelper.prepareAndTest(
    name: 'App should start at the login screen',
    test: loginTest,
  );
}

void loginTest() {
  expect(find.text('Login'), findsOneWidget);
}

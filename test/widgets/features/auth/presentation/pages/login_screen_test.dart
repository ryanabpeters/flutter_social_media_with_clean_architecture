import 'package:flutter_test/flutter_test.dart';

import '../../../../widget_test_helper.dart';

Future<void> main() async {
  await WidgetTestHelper.prepareAndTest(
    name: 'Open the Login screen on start',
    test: loginTest,
  );
}

void loginTest() {
  expect(find.text('Login'), findsOneWidget);
}

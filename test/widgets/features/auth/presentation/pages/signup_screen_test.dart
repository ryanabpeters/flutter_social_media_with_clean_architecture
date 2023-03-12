import 'package:flutter_social_media_with_clean_architecture/src/features/auth/presentation/pages/signup_screen.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../widget_test_helper.dart';

Future<void> main() async {
  await WidgetTestHelper.prepareAndTest(
    name: 'Open the Signup screen',
    test: feedTest,
    testWidget: const SignupScreen(),
  );
}

void feedTest() {
  expect(find.text('Signup'), findsOneWidget);
}

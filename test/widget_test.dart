import 'package:flutter_social_media_with_clean_architecture/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Open the Feed screen on start', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('Feed'), findsOneWidget);
  });
}

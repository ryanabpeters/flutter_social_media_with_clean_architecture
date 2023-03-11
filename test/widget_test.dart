import 'package:flutter_social_media_with_clean_architecture/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Open the Feed screen on start',
      (final WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.text('Feeds'), findsOneWidget);
  });
}

import 'package:flutter_social_media_with_clean_architecture/src/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> main() async {
  test('Unit tests working', () async {
    const LoginScreen loginScreen = LoginScreen();
    expect(loginScreen.testFunction(1), 2);
  });
}

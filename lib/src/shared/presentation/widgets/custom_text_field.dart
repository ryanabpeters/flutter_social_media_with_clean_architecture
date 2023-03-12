part of 'widgets.dart';

/// The default text field used throughout the app.
class CustomTextField extends StatelessWidget {
  /// The CustomTextField constructor.
  const CustomTextField({super.key});

  @override
  Widget build(final BuildContext context) {
    return TextField(decoration: AppStyles.textFieldDecoration);
  }
}

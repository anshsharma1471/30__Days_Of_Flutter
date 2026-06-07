// This is a basic Flutter widget test for the catalog application.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package.

import 'package:flutter_test/flutter_test.dart';
import 'package:catalog_application/main.dart';

void main() {
  testWidgets('Catalog App home page displays title smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the home page title "Catalog App" is found.
    expect(find.text('Catalog App'), findsOneWidget);
  });
}

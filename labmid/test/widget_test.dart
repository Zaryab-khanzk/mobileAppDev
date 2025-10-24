// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:labmid/main.dart';

void main() {
  testWidgets('App starts without errors', (WidgetTester tester) async {
    // Build the LabMidApp widget.
    await tester.pumpWidget(LabMidApp());

    // Check if the main elements exist.
    expect(find.text('User Task Manager'), findsOneWidget);

    // You can also add more `expect` checks here for your tabs or any widget.
  });
}

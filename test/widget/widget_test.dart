import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterstarterkit/ui/pages/HomePage.dart';

void main() {
  //Not Working
  testWidgets('Check for Image in SplashPage', (WidgetTester tester) async {
    await tester.pumpWidget(
      Directionality(textDirection: TextDirection.ltr, child: HomePage()),
    );
    expect(
        find.text(
          'You have pushed the button this many times:',
        ),
        findsOneWidget);
  }, skip: true);
}

import 'package:flutter_test/flutter_test.dart';
import 'package:flutterstarterkit/logic/providers/MyProvider.dart';

void main() {
  group('Testing Provider Implementation', () {
    MyProvider provider;

    setUp(() {
      provider = MyProvider();
    });

    tearDown(() {
      provider.dispose();
    });

    test('Counter initialization', () {
      expect(provider.getCount, 0);
    });

    test('Increase counter', () {
      provider.increaseCount();
      expect(provider.getCount, 1);
    });

    test('Decrease counter', () {
      provider.decreaseCount();
      expect(provider.getCount, -1);
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:flutterstarterkit/logic/providers/MyProvider.dart';

void main() {
  group('MyProvider', () {
    test('Counter initialization', () {
      expect(MyProvider().getCount, 0);
    });

    test('Increase counter', () {
      final provider = MyProvider();
      provider.increaseCount();
      expect(provider.getCount, 1);
    });

    test('Decrease counter', () {
      final provider = MyProvider();
      provider.decreaseCount();
      expect(provider.getCount, -1);
    });
  });
}

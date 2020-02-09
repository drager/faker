import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  group('sport', () {
    test('should be able to generate name', () {
      expect(faker.sport.name(), matches(RegExp(r'^[\w-^ ]+$')));
    });
  });
}

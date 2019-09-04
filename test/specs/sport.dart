import 'package:test/test.dart';
import 'package:faker/faker.dart';

main() {
  group('sport', () {
    test('should be able to generate name', () {
      expect(faker.sport.name(), matches(new RegExp(r'^[\w-^ ]+$')));
    });
  });
}

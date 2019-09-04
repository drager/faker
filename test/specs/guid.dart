import "package:test/test.dart";
import 'package:faker/faker.dart';

main() {
  group('guid', () {
    test('should be able to generate a guid', () {
      expect(faker.guid.guid(), matches(new RegExp(r'^[\da-f]{8}\-[\da-f]{4}\-[\da-f]{4}\-[\da-f]{4}\-[\da-f]{12}$')));

    });
  });
}

import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  group('geo', () {
    test('should be able to generate a longitude', () {
      expect(
          faker.geo.longitude(),
          allOf(
            greaterThanOrEqualTo(-180),
            lessThanOrEqualTo(180),
          ));
    });

    test('should be able to generate a latitude', () {
      expect(
          faker.geo.latitude(),
          allOf(
            greaterThanOrEqualTo(-90),
            lessThanOrEqualTo(90),
          ));
    });
  });
}

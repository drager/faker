import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  var faker = Faker();

  group('currency', () {
    test('should be able to generate currency code', () {
      expect(faker.currency.code(), hasLength(3));
    });

    test('should be able to generate currency name', () {
      expect(faker.currency.name(), matches(RegExp(r'(\w){1}')));
    });
  });
}

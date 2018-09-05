import 'package:test/test.dart';
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  group('currency', () {
    test('should be able to generate currency code', () {
      expect(faker.currency.code(), hasLength(3));
    });

    test('should be able to generate currency name', () {
      expect(faker.currency.name(), matches(new RegExp(r'(\w){1}')));
    });
  });
}

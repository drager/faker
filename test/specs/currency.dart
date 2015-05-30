library faker.test.currency;

import 'package:guinness/guinness.dart';
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  describe('currency', () {
    it('should be able to generate currency code', () {
      expect(faker.currency.code().length).toEqual(3);
    });

    it('should be able to generate currency name', () {
      expect(new RegExp(r'(\w){1}').hasMatch(faker.currency.name())).toBeTrue();
    });
  });
}

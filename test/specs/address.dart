library faker.test.address;

import 'package:guinness/guinness.dart';
import 'package:unittest/unittest.dart' hide expect;
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  describe('address', () {
    it('should be able to zip code', () {
      for (var i = 0; i < 10; i++) {
        expect(faker.address.zipCode()).to(
            anyOf(matches(r'^[0-9]{5}$'), matches(r'^[0-9]{5}([-][0-9]{4})$')));
      }
    });

    it('should be able to generate city', () {
      for (var i = 0; i < 20; i++) {
        expect(faker.address.city()).to(anyOf(matches(r'^[^ ]+ [^ ]+[^]+$'),
            matches(r'^[^ ]+ [^ ]+$'), matches(r'^[\w]+[\w]+$')));
      }
    });

    it('should be able to generate city prefix', () {
      expect(new RegExp(r'^[^ ]+ [^ ]+$').hasMatch(faker.address.cityPrefix()))
          .toBeTrue();
    });

    it('should be able to generate city suffix', () {
      expect(new RegExp(r'^[a-z]+$').hasMatch(faker.address.citySuffix()))
          .toBeTrue();
    });

    it('should be able to generate street name', () {
      expect(new RegExp(r'^[^ ]+ [^ ]+$').hasMatch(faker.address.streetName()))
          .toBeTrue();
    });

    it('should be able to generate street address', () {
      expect(new RegExp(r'^[^ ]+ [^ ]+ [^ ]+$')
          .hasMatch(faker.address.streetAddress())).toBeTrue();
    });

    it('should be able to generate street suffix', () {
      expect(new RegExp(r'^[\w]+$').hasMatch(faker.address.streetSuffix()))
          .toBeTrue();
    });

    it('should be able to generate building number', () {
      expect(new RegExp(r'^[\w]+$').hasMatch(faker.address.buildingNumber()))
          .toBeTrue();
    });

    it('should be able to generate neighborhood', () {
      expect(new RegExp(r'^[\w-/^ ]*$').hasMatch(faker.address.neighborhood()))
          .toBeTrue();
    });

    it('should be able to generate country', () {
      expect(new RegExp(r"^[\w,'^ ]+$").hasMatch(faker.address.country()))
          .toBeTrue();
    });

    it('should be able to generate country code', () {
      expect(new RegExp(r'^[A-Z]{2}$').hasMatch(faker.address.countryCode()))
          .toBeTrue();
    });
  });
}

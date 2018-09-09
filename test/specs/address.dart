import 'package:test/test.dart';
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  group('address', () {
    test('should be able to zip code', () {
      for (var i = 0; i < 10; i++) {
        expect(faker.address.zipCode(),
            anyOf(matches(r'^[0-9]{5}$'), matches(r'^[0-9]{5}([-][0-9]{4})$')));
      }
    });

    test('should be able to generate city', () {
      for (var i = 0; i < 20; i++) {
        expect(faker.address.city(), anyOf(matches(r'^[^ ]+ [^ ]+[^]+$'),
            matches(r'^[^ ]+ [^ ]+$'), matches(r"^[\w']+[\w]+$")));
      }
    });

    test('should be able to generate city prefix', () {
      expect(faker.address.cityPrefix(), matches(new RegExp(r'^[^ ]+ [^ ]+$')));
    });

    test('should be able to generate city suffix', () {
      expect(faker.address.citySuffix(), matches(new RegExp(r'^[a-z]+$')));
    });

    test('should be able to generate street name', () {
      expect(faker.address.streetName(), matches(new RegExp(r'^[^ ]+ [^ ]+$')));
    });

    test('should be able to generate street address', () {
      expect(faker.address.streetAddress(), matches(new RegExp(r'^[^ ]+ [^ ]+ [^ ]+$')));
    });

    test('should be able to generate street suffix', () {
      expect(faker.address.streetSuffix(), matches(new RegExp(r'^[\w]+$')));
    });

    test('should be able to generate building number', () {
      expect(faker.address.buildingNumber(), matches(new RegExp(r'^[\w]+$')));
    });

    test('should be able to generate neighborhood', () {
      expect(faker.address.neighborhood(), matches(new RegExp(r'^[\w-/^ ]*$')));
    });

    test('should be able to generate country', () {
      expect(faker.address.country(), matches(new RegExp(r"^[\w,éÅô\.Ç\-()'^ ]+$")));
    });

    test('should be able to generate country code', () {
      expect(faker.address.countryCode(), matches(new RegExp(r'^[A-Z]{2}$')));
    });
  });
}

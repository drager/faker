import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  var faker = Faker();

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
      expect(faker.address.cityPrefix(), matches(RegExp(r'^[^ ]+ [^ ]+$')));
    });

    test('should be able to generate city suffix', () {
      expect(faker.address.citySuffix(), matches(RegExp(r'^[a-z]+$')));
    });

    test('should be able to generate street name', () {
      expect(faker.address.streetName(), matches(RegExp(r'^[^ ]+ [^ ]+$')));
    });

    test('should be able to generate street address', () {
      expect(faker.address.streetAddress(), matches(RegExp(r'^[^ ]+ [^ ]+ [^ ]+$')));
    });

    test('should be able to generate street suffix', () {
      expect(faker.address.streetSuffix(), matches(RegExp(r'^[\w]+$')));
    });

    test('should be able to generate building number', () {
      expect(faker.address.buildingNumber(), matches(RegExp(r'^[\w]+$')));
    });

    test('should be able to generate neighborhood', () {
      expect(faker.address.neighborhood(), matches(RegExp(r'^[\w-/^ ]*$')));
    });

    test('should be able to generate country', () {
      expect(faker.address.country(), matches(RegExp(r"^[\w,éÅô\.Ç\-()'^ ]+$")));
    });

    test('should be able to generate country code', () {
      expect(faker.address.countryCode(), matches(RegExp(r'^[A-Z]{2}$')));
    });

    test('should be able to generate continent', () {
      expect(faker.address.continent(), matches(RegExp(r'^[\w\s]*$')));
    });
  });
}

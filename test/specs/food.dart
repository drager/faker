import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  var faker = Faker();

  group('food', () {    
    test('should be able to generate restaurant', () {
      expect(faker.food.restaurant(), matches(RegExp(r"^([\w\s\&\/\,\.\ö\’\'-])+$")));
    });

    test('should be able to generate dish', () {
      expect(faker.food.dish(), matches(RegExp(r"^([\w\s\'-])+$")));
    });

    test('should be able to generate cuisine', () {
      expect(faker.food.cuisine(), matches(RegExp(r'^([\w\s\-])+$')));
    });
  });
}

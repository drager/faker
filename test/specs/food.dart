import 'package:test/test.dart';
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  group('food', () {
    test('should be able to generate restaurant', () {
      expect(faker.food.restaurant(), matches(new RegExp(r"^([\w\s\'-])+$")));
    });

    test('should be able to generate dish', () {
      expect(faker.food.dish(), matches(new RegExp(r"^([\w\s\'-])+$")));
    });

    test('should be able to generate cuisine', () {
      expect(faker.food.cuisine(), matches(new RegExp(r"^([\w\s\-])+$")));
    });
  });
}

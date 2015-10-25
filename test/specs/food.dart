library faker.test.food;

import 'package:guinness/guinness.dart';
import 'package:unittest/unittest.dart' hide expect;
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  describe('food', () {
    it('should be able to generate restaurant', () {
      expect(new RegExp(r"^([\w\s\'-])+$").hasMatch(faker.food.restaurant()))
          .toBeTrue();
    });

    it('should be able to generate dish', () {
      expect(new RegExp(r"^([\w\s\'-])+$").hasMatch(faker.food.dish()))
          .toBeTrue();
    });

    it('should be able to generate cuisine', () {
      expect(new RegExp(r"^([\w\s\-])+$").hasMatch(faker.food.cuisine()))
          .toBeTrue();
    });
  });
}

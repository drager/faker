library faker.test.random;

import 'package:guinness/guinness.dart';
import 'package:unittest/unittest.dart' hide expect;
import 'package:faker/faker.dart';

main() {
  describe('random generator', () {
    it('should be able to generate element', () {
      expect(faker.randomGenerator.element([1, 2, 5])).to(anyOf(1, 2, 5));
    });

    it('should be able to generate numbers', () {
      expect(faker.randomGenerator.numbers(5, 2).length).toEqual(2);
      expect(faker.randomGenerator.numbers(5, 2).first).toBeA(int);
    });

    it('should be able to generate integer', () {
      expect(faker.randomGenerator.integer(5)).toBeA(int);
      expect(faker.randomGenerator.integer(10, min: 5)).toBeGreaterThan(4);
    });

    it('should be able to generate boolean', () {
      expect(faker.randomGenerator.boolean()).to(anyOf(false, true));
    });

    it('should be able to generate decimal', () {
      expect(faker.randomGenerator.decimal()).toBeA(double);
    });

    it('should be able to generate string', () {
      expect(faker.randomGenerator.string(5)).toBeA(String);
      expect(faker.randomGenerator.string(10, min: 5).length)
          .toBeGreaterThan(4);
    });

    it('should be able to generate amount', () {
      expect(faker.randomGenerator.amount(
          (_) => faker.internet.ipv4Address(), 20).length).toBeLessThan(21);
      expect(faker.randomGenerator.amount(
              (_) => faker.internet.ipv4Address(), 20, min: 5).length)
          .toBeGreaterThan(4);
    });

    it('should be able to generate from pattern', () {
      expect(faker.randomGenerator.fromPattern(['#####', '#####-####'])).to(
          anyOf(matches(r'^[0-9]{5}$'), matches(r'^[0-9]{5}([-][0-9]{4})$')));
    });
  });
}

import 'package:faker/faker.dart';
import 'package:test/test.dart';

const isInt = TypeMatcher<int>();
const isDouble = TypeMatcher<double>();
const isString = TypeMatcher<String>();
const isListOfInt = TypeMatcher<List<int>>();

void main() {
  group('random generator', () {
    test('should be able to generate element', () {
      expect(faker.randomGenerator.element([1, 2, 5]), anyOf(1, 2, 5));
    });

    test('should be able to generate key from map', () {
      expect(faker.randomGenerator.mapElementKey({1: 2, 3: 4}), anyOf(1, 3));
    });

    test('should be able to generate value from map', () {
      expect(faker.randomGenerator.mapElementValue({1: 2, 3: 4}), anyOf(2, 4));
    });

    test('should be able to generate numbers', () {
      expect(faker.randomGenerator.numbers(5, 2), hasLength(2));
      expect(faker.randomGenerator.numbers(5, 2), isListOfInt);
    });

    test('should be able to generate integer', () {
      expect(faker.randomGenerator.integer(5), isInt);
      expect(faker.randomGenerator.integer(10, min: 5), greaterThan(4));
    });

    test('should be able to generate integer of given length', () {
      expect(faker.randomGenerator.numberOfLength(5), hasLength(5));
    });

    test('should be able to generate boolean', () {
      expect(faker.randomGenerator.boolean(), anyOf(false, true));
    });

    test('should be able to generate decimal', () {
      expect(faker.randomGenerator.decimal(), isDouble);
    });

    test('should be able to generate string', () {
      expect(faker.randomGenerator.string(5), isString);
      expect(
          faker.randomGenerator.string(10, min: 5), hasLength(greaterThan(4)));
    });

    test('should be able to generate amount', () {
      expect(
          faker.randomGenerator.amount((_) => faker.internet.ipv4Address(), 20),
          hasLength(lessThan(21)));
      expect(
          faker.randomGenerator
              .amount((_) => faker.internet.ipv4Address(), 20, min: 5),
          hasLength(greaterThan(4)));
    });

    test('should be able to generate from pattern', () {
      expect(faker.randomGenerator.fromPattern(['#####', '#####-####']),
          anyOf(matches(r'^[0-9]{5}$'), matches(r'^[0-9]{5}([-][0-9]{4})$')));
    });
  });
}

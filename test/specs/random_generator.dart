import 'package:test/test.dart';
import 'package:faker/faker.dart';

const isInt = const TypeMatcher<int>();
const isDouble = const TypeMatcher<double>();
const isString = const TypeMatcher<String>();
const isListOfInt = const TypeMatcher<List<int>>();

main() {
  group('random generator', () {
    test('should be able to generate element', () {
      expect(faker.randomGenerator.element([1, 2, 5]), anyOf(1, 2, 5));
    });

    test('should be able to generate numbers', () {
      expect(faker.randomGenerator.numbers(5, 2), hasLength(2));
      expect(faker.randomGenerator.numbers(5, 2), isListOfInt);
    });

    test('should be able to generate integer', () {
      expect(faker.randomGenerator.integer(5), isInt);
      expect(faker.randomGenerator.integer(10, min: 5), greaterThan(4));
    });

    test('should be able to generate boolean', () {
      expect(faker.randomGenerator.boolean(), anyOf(false, true));
    });

    test('should be able to generate decimal', () {
      expect(faker.randomGenerator.decimal(), isDouble);
    });

    test('should be able to generate string', () {
      expect(faker.randomGenerator.string(5), isString);
      expect(faker.randomGenerator.string(10, min: 5), hasLength(greaterThan(4)));
    });

    test('should be able to generate amount', () {
      expect(faker.randomGenerator.amount(
          (_) => faker.internet.ipv4Address(), 20), hasLength(lessThan(21)));
      expect(faker.randomGenerator.amount(
              (_) => faker.internet.ipv4Address(), 20, min: 5), hasLength(greaterThan(4)));
    });

    test('should be able to generate from pattern', () {
      expect(faker.randomGenerator.fromPattern(['#####', '#####-####']),
          anyOf(matches(r'^[0-9]{5}$'), matches(r'^[0-9]{5}([-][0-9]{4})$')));
    });
  });
}

import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  group('seed', () {
    test('should be able to generate the same values', () {
      final faker1 = Faker.withGenerator(RandomGenerator(seed: 63833423));
      final faker2 = Faker.withGenerator(RandomGenerator(seed: 63833423));

      // Generate some different types of data.
      expect(faker1.address.country(), equals(faker2.address.country()));
      expect(faker1.company.name(), equals(faker2.company.name()));
      expect(faker1.currency.code(), equals(faker2.currency.code()));
      expect(
          faker1.internet.ipv4Address(), equals(faker2.internet.ipv4Address()));
      expect(faker1.job.title(), equals(faker2.job.title()));
      expect(faker1.person.firstName(), equals(faker2.person.firstName()));
      expect(faker1.sport.name(), equals(faker2.sport.name()));

      // Generate a random amount of IP v4 addresses (max 10).
      expect(
          faker1.randomGenerator
              .amount((_) => faker1.internet.ipv4Address(), 10),
          equals(faker2.randomGenerator
              .amount((_) => faker2.internet.ipv4Address(), 10)));

      // Generate random boolean.
      expect(faker1.randomGenerator.boolean(),
          equals(faker2.randomGenerator.boolean()));

      // Generate random decimal.
      expect(faker1.randomGenerator.decimal(),
          equals(faker2.randomGenerator.decimal()));

      // Generate random DateTime, between the years 2000 and 2020
      expect(faker1.date.dateTime(minYear: 2000, maxYear: 2020),
          equals(faker2.date.dateTime(minYear: 2000, maxYear: 2020)));

      // Generate random User Agent, with osName iOS
      expect(faker1.internet.userAgent(osName: 'iOS'),
          equals(faker2.internet.userAgent(osName: 'iOS')));
    });
  });
}

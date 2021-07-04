library faker.example;

import 'package:faker/faker.dart';

void main() {
  // final random = RandomGenerator(seed: 63833423);
  // final faker = Faker.withGenerator(random);

  // Generate some different types of data.
  print(faker.address.country());
  print(faker.company.name());
  print(faker.currency.code());
  print(faker.internet.ipv4Address());
  print(faker.job.title());
  print(faker.person.firstName());
  print(faker.sport.name());

  // Generate a random amount of IP v4 addresses (max 10).
  print(random.amount((_) => faker.internet.ipv4Address(), 10));

  // Generate random boolean.
  print(random.boolean());

  // Generate random decimal.
  print(random.decimal());

  // Generate random DateTime, between the years 2000 and 2020
  print(faker.date.dateTime(minYear: 2000, maxYear: 2020));

  // Generate random User Agent, with osName iOS
  print(faker.internet.userAgent(osName: 'iOS'));

  // Generate localized Farsi lorem text
  final fakerFa = Faker(provider: FakerDataProviderFa());
  print(fakerFa.lorem.word());
  print(fakerFa.lorem.sentence());
  print(fakerFa.lorem.words(10).join(' '));
  print(fakerFa.lorem.sentences(3).join(' '));

  // Generate localized Farsi person names
  print(fakerFa.person.firstName());
  print(fakerFa.person.lastName());
  print(fakerFa.person.name());
  print(fakerFa.person.fullName());

  // Generate JWT(json web token)
  print(faker.jwt.valid());
  print(faker.jwt.valid(expiresIn: DateTime.now().add(Duration(hours: 2))));
  print(faker.jwt.expired());
  print(faker.jwt.custom(expiresIn: DateTime.now(), payload: {'key': 'value'}));
}

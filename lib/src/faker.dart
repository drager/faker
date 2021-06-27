import 'package:faker/src/date.dart';
import 'package:faker/src/lorem.dart';
import 'package:faker/src/phone_number.dart';
import 'package:faker/src/providers/default_providers.dart';
import 'package:faker/src/providers/fa_providers.dart';

import 'address.dart';
import 'company.dart';
import 'conference.dart';
import 'currency.dart';
import 'food.dart';
import 'guid.dart';
import 'image.dart';
import 'internet.dart';
import 'job.dart';
import 'jwt.dart';
import 'person.dart';
import 'providers/base_providers.dart';
import 'random_generator.dart';
import 'sport.dart';
import 'vehicle.dart';

final Faker faker = Faker.withGenerator(random);

class Faker {
  final Address address;
  final Conference conference;
  final Company company;
  final Currency currency;
  final Food food;
  final Guid guid;
  final Image image;
  final Internet internet;
  final Job job;
  final Jwt jwt;
  final Lorem lorem;
  final Person person;
  final PhoneNumber phoneNumber;
  final Sport sport;
  final Vehicle vehicle;
  final Date date;
  final RandomGenerator randomGenerator;

  Faker.withGenerator(RandomGenerator random, {FakerDataProvider? provider})
      : address = Address(Person(random,
            provider?.personDataProvider ?? DefaultPersonDataProvider())),
        conference = Conference(
            random,
            provider?.conferenceDataProvider ??
                DefaultConferenceDataProvider()),
        company = Company(Person(random,
            provider?.personDataProvider ?? DefaultPersonDataProvider())),
        currency = Currency(random),
        food = Food(
            random, provider?.foodDataProvider ?? DefaultFoodDataProvider()),
        guid = Guid(random),
        image = Image(),
        internet = Internet(random),
        job = Job(random),
        jwt = Jwt(),
        lorem = Lorem(
            random, provider?.loremDataProvider ?? DefaultLoremDataProvider()),
        person = Person(random,
            provider?.personDataProvider ?? DefaultPersonDataProvider()),
        sport = Sport(random),
        date = Date(random),
        phoneNumber = PhoneNumber(random),
        vehicle = Vehicle(),
        randomGenerator = random;

  factory Faker({int? seed, FakerDataProvider? provider}) =>
      Faker.withGenerator(RandomGenerator(seed: seed), provider: provider);
}

class FakerDataProvider {
  final LoremDataProvider? loremDataProvider;
  final PersonDataProvider? personDataProvider;
  final ConferenceDataProvider? conferenceDataProvider;
  final FoodDataProvider? foodDataProvider;

  FakerDataProvider({
    this.loremDataProvider,
    this.personDataProvider,
    this.conferenceDataProvider,
    this.foodDataProvider,
  });
}

class FakerDataProviderFa extends FakerDataProvider {
  FakerDataProviderFa()
      : super(
          loremDataProvider: LoremDataProviderFa(),
          personDataProvider: PersonDataProviderFa(),
          conferenceDataProvider: ConferenceDataProviderFa(),
          foodDataProvider: FoodDataProviderFa(),
        );
}

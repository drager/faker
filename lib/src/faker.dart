import 'package:faker/src/date.dart';
import 'package:faker/src/geo.dart';
import 'package:faker/src/lorem.dart';
import 'package:faker/src/phone_number.dart';
import 'package:faker/src/providers/default_providers.dart';
import 'package:faker/src/providers/fa_providers.dart';

import 'address.dart';
import 'animals.dart';
import 'colors.dart';
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
  final Color color;
  final Company company;
  final Currency currency;
  final Food food;
  final Geo geo;
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
  final Animal animal;

  Faker.withGenerator(RandomGenerator random, {FakerDataProvider? provider})
      : address = Address(Person(random,
            provider?.personDataProvider ?? DefaultPersonDataProvider())),
        conference = Conference(
            random,
            provider?.conferenceDataProvider ??
                DefaultConferenceDataProvider()),
        color = Color(random),
        company = Company(Person(random,
            provider?.personDataProvider ?? DefaultPersonDataProvider())),
        currency = Currency(random,
            provider?.currencyDataProvider ?? DefaultCurrencyDataProvider()),
        food = Food(
            random, provider?.foodDataProvider ?? DefaultFoodDataProvider()),
        geo = Geo(random),
        guid = Guid(random),
        image = Image(),
        internet = Internet(random),
        job =
            Job(random, provider?.jobDataProvider ?? DefaultJobDataProvider()),
        jwt = Jwt(),
        lorem = Lorem(
            random, provider?.loremDataProvider ?? DefaultLoremDataProvider()),
        person = Person(random,
            provider?.personDataProvider ?? DefaultPersonDataProvider()),
        sport = Sport(random,
            provider?.sportsDataProvider ?? DefaultSportsDataProvider()),
        date = Date(random),
        phoneNumber = PhoneNumber(random),
        vehicle = Vehicle(random,
            provider?.vehicleDataProvider ?? DefaultVehicleDataProvider()),
        randomGenerator = random,
        animal = Animal(random);

  factory Faker({int? seed, FakerDataProvider? provider}) =>
      Faker.withGenerator(RandomGenerator(seed: seed), provider: provider);
}

class FakerDataProvider {
  final PersonDataProvider? personDataProvider;
  final ConferenceDataProvider? conferenceDataProvider;
  final CurrencyDataProvider? currencyDataProvider;
  final FoodDataProvider? foodDataProvider;
  final JobDataProvider? jobDataProvider;
  final LoremDataProvider? loremDataProvider;
  final SportsDataProvider? sportsDataProvider;
  final VehicleDataProvider? vehicleDataProvider;

  FakerDataProvider({
    this.personDataProvider,
    this.conferenceDataProvider,
    this.currencyDataProvider,
    this.foodDataProvider,
    this.jobDataProvider,
    this.loremDataProvider,
    this.sportsDataProvider,
    this.vehicleDataProvider,
  });
}

class FakerDataProviderFa extends FakerDataProvider {
  FakerDataProviderFa() : super(loremDataProvider: LoremDataProviderFa());
}

import 'package:faker/src/date.dart';
import 'package:faker/src/geo.dart';
import 'package:faker/src/lorem.dart';
import 'package:faker/src/phone_number.dart';
import 'package:faker/src/providers/default_providers.dart';
import 'package:faker/src/providers/base_providers.dart';
import 'package:faker/src/providers/fa_providers.dart';
import 'package:faker/src/providers/kr_providers.dart';

import 'address.dart';
import 'animals.dart';
import 'company.dart';
import 'colors.dart';
import 'conference.dart';
import 'currency.dart';
import 'food.dart';
import 'guid.dart';
import 'image.dart';
import 'internet.dart';
import 'job.dart';
import 'jwt.dart';
import 'person.dart';
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
      : address = Address(Person(random)),
        conference = Conference(random),
        color = Color(random),
        company = Company(Person(random)),
        currency = Currency(random),
        food = Food(random),
        geo = Geo(random),
        guid = Guid(random),
        image = Image(),
        internet = Internet(random),
        job = Job(random),
        jwt = Jwt(),
        lorem = Lorem(
            random, provider?.loremDataProvider ?? DefaultLoremDataProvider()),
        person = Person(random),
        sport = Sport(random),
        date = Date(random),
        phoneNumber = PhoneNumber(random),
        vehicle = Vehicle(random),
        randomGenerator = random,
        animal = Animal(random,
            provider?.animalsDataProvider ?? DefaultAnimalsDataProvider());

  factory Faker({int? seed, FakerDataProvider? provider}) =>
      Faker.withGenerator(RandomGenerator(seed: seed), provider: provider);
}

class FakerDataProvider {
  final AnimalsDataProvider? animalsDataProvider;
  final LoremDataProvider? loremDataProvider;

  FakerDataProvider({
    this.animalsDataProvider,
    this.loremDataProvider,
  });
}

class FakerDataProviderFa extends FakerDataProvider {
  FakerDataProviderFa() : super(loremDataProvider: LoremDataProviderFa());
}

class FakerDataProviderKr extends FakerDataProvider {
  FakerDataProviderKr() : super(animalsDataProvider: AnimalsDataProviderKr());
}

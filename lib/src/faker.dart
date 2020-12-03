import 'package:faker/src/date.dart';
import 'package:faker/src/lorem.dart';
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
import 'person.dart';
import 'providers/base_providers.dart';
import 'random_generator.dart';
import 'sport.dart';

final Faker faker = Faker();

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
  final Lorem lorem;
  final Person person;
  final Sport sport;
  final Date date;
  final RandomGenerator randomGenerator;

  Faker([FakerDataProvider provider])
      : address = const Address(),
        conference = const Conference(),
        company = const Company(),
        currency = const Currency(),
        food = const Food(),
        guid = const Guid(),
        image = const Image(),
        internet = const Internet(),
        job = const Job(),
        lorem = Lorem(provider?.loremDataProvider ?? DefaultLoremDataProvider()),
        person = const Person(),
        sport = const Sport(),
        date = const Date(),
        randomGenerator = const RandomGenerator();
}

class FakerDataProvider {
  final LoremDataProvider loremDataProvider;

  FakerDataProvider({this.loremDataProvider});
}

class FakerDataProviderFa extends FakerDataProvider {
  FakerDataProviderFa() : super(loremDataProvider: LoremDataProviderFa());
}


import 'address.dart';
import 'company.dart';
import 'conference.dart';
import 'currency.dart';
import 'food.dart';
import 'guid.dart';
import 'internet.dart';
import 'job.dart';
import 'person.dart';
import 'random_generator.dart';
import 'sport.dart';

const Faker faker = const Faker();

class Faker {
  final Address address;
  final Conference conference;
  final Company company;
  final Currency currency;
  final Food food;
  final Guid guid;
  final Internet internet;
  final Job job;
  final Person person;
  final Sport sport;
  final RandomGenerator randomGenerator;

  const Faker()
      : address = const Address(),
        conference = const Conference(),
        company = const Company(),
        currency = const Currency(),
        food = const Food(),
        guid = const Guid(),
        internet = const Internet(),
        job = const Job(),
        person = const Person(),
        sport = const Sport(),
        randomGenerator = const RandomGenerator();
}

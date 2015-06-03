part of faker;

const faker = const Faker();

class Faker {
  final Address address;
  final Currency currency;
  final Internet internet;
  final Job job;
  final Person person;
  final RandomGenerator randomGenerator;

  const Faker()
      : address = const Address(),
        currency = const Currency(),
        internet = const Internet(),
        job = const Job(),
        person = const Person(),
        randomGenerator = const RandomGenerator();
}

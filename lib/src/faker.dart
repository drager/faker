part of faker;

const faker = const Faker();

class Faker {
  final Currency currency;
  final Internet internet;
  final Job job;
  final Person person;
  final RandomGenerator randomGenerator;

  const Faker()
      : currency = const Currency(),
        internet = const Internet(),
        job = const Job(),
        person = const Person(),
        randomGenerator = const RandomGenerator();
}

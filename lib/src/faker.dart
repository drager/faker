part of faker;

class Faker {
  final Currency currency;
  final Internet internet;
  final Job job;
  final Person person;

  Faker()
      : currency = new Currency(),
        internet = new Internet(),
        job = new Job(),
        person = new Person();
}

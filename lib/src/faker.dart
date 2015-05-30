part of faker;

class Faker {
  final Currency currency;
  final Internet internet;
  final Person person;

  Faker()
      : currency = new Currency(),
        internet = new Internet(),
        person = new Person();
}

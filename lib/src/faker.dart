part of faker;

class Faker {
  final Internet internet;
  final Person person;

  Faker()
      : internet = new Internet(),
        person = new Person();
}

import 'package:test/test.dart';
import 'package:faker/faker.dart';

main() {
  var faker = Faker();

  group("date", () {
    test("should be able to generate a DateTime", () {
      expect(true, faker.date.dateTime() is DateTime);
    });

    test("should be able to generate a month", () {
      expect(faker.date.month(), matches(new RegExp(r"^([\w\s\-])+$")));
    });

    test("should be able to generate a year", () {
      expect(
          faker.date.year(), matches(new RegExp(r"^([0-9]){1,5}( (BC|AD))?$")));
    });

    test('should be able to generate a time', () {
      expect(
          faker.date.time(),
          matches(new RegExp(
              r"^([0-9]){1,}:([0-9]){2} ?( (AM|PM|((\w){3})))?( )?(((\w){3}))*$")));
    });
  });
}

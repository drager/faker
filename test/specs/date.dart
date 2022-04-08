import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  var faker = Faker();

  group('date', () {
    test('should be able to generate a DateTime', () {
      expect(true, faker.date.dateTime() is DateTime);
    });

    test('should be able to generate a DateTime between 2 DateTimes', () {
      final fromDate = DateTime(1920);
      final toDate = DateTime.now();
      final fakeDateTime = faker.date.dateTimeBetween(fromDate, toDate);
      expect(true,
          fakeDateTime.isAfter(fromDate) && fakeDateTime.isBefore(toDate));
    });

    test('should be able to generate a month', () {
      expect(faker.date.month(), matches(RegExp(r'^([\w\s\-])+$')));
    });

    test('should be able to generate a year', () {
      expect(faker.date.year(), matches(RegExp(r'^([0-9]){1,5}( (BC|AD))?$')));
    });

    test('should be able to generate a time', () {
      expect(
          faker.date.time(),
          matches(RegExp(
              r'^([0-9]){1,}:([0-9]){2} ?( (AM|PM|((\w){3})))?( )?(((\w){3}))*$')));
    });
  });
}

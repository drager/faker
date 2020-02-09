import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  var faker = Faker();

  group('person', () {
    test('should be able to generate name', () {
      for (var i = 0; i < 20; i++) {
        expect(faker.person.name(), anyOf(matches(r'^[^ ]+ [^ ]+$'),
            matches(r'^[^ ]+ [^ ]+ [^ ]+$'),
            matches(r'^[^ ]+ [^ ]+ [^ ]+ [^ ]+$')));
      }
    });

    test('should be able to generate first name', () {
      expect(faker.person.firstName(), matches(RegExp(r'^[^\s]+$')));
    });

    test('should be able to generate last name', () {
      expect(faker.person.lastName(), matches(RegExp(r'^[^\s]+$')));
    });

    test('should be able to generate prefix', () {
      expect(faker.person.prefix(), matches(RegExp(r'^[\w.]{2,4}$')));
    });

    test('should be able to generate suffix', () {
      expect(faker.person.suffix(), matches(RegExp(r'^[\w.]{1,3}$')));
    });
  });
}

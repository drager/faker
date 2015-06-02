library faker.test.person;

import 'package:guinness/guinness.dart';
import 'package:unittest/unittest.dart' hide expect;
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  describe('person', () {
    it('should be able to generate name', () {
      for (var i = 0; i < 20; i++) {
        expect(faker.person.name()).to(anyOf(matches(r'^[^ ]+ [^ ]+$'),
            matches(r'^[^ ]+ [^ ]+ [^ ]+$'),
            matches(r'^[^ ]+ [^ ]+ [^ ]+ [^ ]+$')));
      }
    });

    it('should be able to generate first name', () {
      expect(new RegExp(r'^[^\s]+$').hasMatch(faker.person.firstName()))
          .toBeTrue();
    });

    it('should be able to generate last name', () {
      expect(new RegExp(r'^[^\s]+$').hasMatch(faker.person.lastName()))
          .toBeTrue();
    });

    it('should be able to generate prefix', () {
      expect(new RegExp(r'^[\w.]{2,4}$').hasMatch(faker.person.prefix()))
          .toBeTrue();
    });

    it('should be able to generate suffix', () {
      expect(new RegExp(r'^[\w.]{1,3}$').hasMatch(faker.person.suffix()))
          .toBeTrue();
    });
  });
}

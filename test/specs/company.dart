library faker.test.company;

import 'package:guinness/guinness.dart';
import 'package:unittest/unittest.dart' hide expect;
import 'package:faker/faker.dart';

main() {
  describe('company', () {
    it('should be able to generate name', () {
      for (var i = 0; i < 10; i++) {
        expect(faker.company.name()).to(anyOf(matches(r'^[^ ]+ [^ ]$'),
            matches(r"^[\w-']+$"), matches(r'^[\w, ]+[\w ]$')));
      }
    });

    it('should be able to generate position', () {
      for (var i = 0; i < 10; i++) {
        expect(faker.company.position()).to(
            anyOf(matches(r'^[^ ]+ [^ ]+$'), matches(r'^[^ ]+ [^ ]+ [^ ]+$')));
      }
    });

    it('should be able to generate suffix', () {
      expect(new RegExp(r'^[\w^ ]+$').hasMatch(faker.company.suffix()))
      .toBeTrue();
    });
  });
}

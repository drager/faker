library faker.test.sport;

import 'package:guinness/guinness.dart';
import 'package:faker/faker.dart';

main() {
  describe('sport', () {
    it('should be able to generate name', () {
      expect(new RegExp(r'^[\w-^ ]+$').hasMatch(faker.sport.name())).toBeTrue();
    });
  });
}

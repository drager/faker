library faker.test.conference;

import 'package:guinness/guinness.dart';
import 'package:faker/faker.dart';

main() {
  describe('conference', () {
    it('should be able to generate name', () {
      expect(new RegExp(r'^[\w\.,\-() ]*$').hasMatch(faker.conference.name()))
          .toBeTrue();
    });
  });
}

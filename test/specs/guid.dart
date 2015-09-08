library faker.test.guid;

import 'package:guinness/guinness.dart';
import 'package:faker/faker.dart';

main() {
  describe('guid', () {
    it('should be able to generate a guid', () {
      expect(new RegExp(r'^[\da-f]{8}\-[\da-f]{4}\-[\da-f]{4}\-[\da-f]{4}\-[\da-f]{12}$')
        .hasMatch(faker.guid.guid()))
        .toBeTrue();
    });
  });
}

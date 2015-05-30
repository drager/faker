library faker.test.job;

import 'package:guinness/guinness.dart';
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  describe('job', () {
    it('should be able to generate job title', () {
      expect(new RegExp(r'^[^ ]+ [^ ]+ [^ ]+$').hasMatch(faker.job.title()))
          .toBeTrue();
    });
  });
}

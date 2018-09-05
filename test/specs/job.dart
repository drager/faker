import 'package:test/test.dart';
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  group('job', () {
    test('should be able to generate job title', () {
      expect(faker.job.title(), matches(new RegExp(r'^[^ ]+ [^ ]+ [^ ]+$')));
    });
  });
}

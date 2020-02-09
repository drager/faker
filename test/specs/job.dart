import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  var faker = Faker();

  group('job', () {
    test('should be able to generate job title', () {
      expect(faker.job.title(), matches(RegExp(r'^[^ ]+ [^ ]+ [^ ]+$')));
    });
  });
}

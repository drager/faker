import "package:test/test.dart";
import 'package:faker/faker.dart';

main() {
  group('company', () {
    test('should be able to generate name', () {
      for (var i = 0; i < 10; i++) {
        expect(faker.company.name(), anyOf(matches(r'^[^ ]+ [^ ]$'),
            matches(r"^[\w-']+$"), matches(r"^[\w,' ]+[\w ]$")));
      }
    });

    test('should be able to generate position', () {
      for (var i = 0; i < 10; i++) {
        expect(faker.company.position(),
            anyOf(matches(r'^[^ ]+ [^ ]+$'), matches(r'^[^ ]+ [^ ]+ [^ ]+$')));
      }
    });

    test('should be able to generate suffix', () {
      expect(faker.company.suffix(), matches(new RegExp(r'^[\w^ ]+$')));
    });
  });
}

import 'package:faker/faker.dart';
import 'package:test/test.dart';

void main() {
  var faker = Faker();

  group('person', () {
    test('should be able to generate phone number', () {
      for (var i = 0; i < 20; i++) {
        expect(
          faker.person.name(),
          anyOf(
            [
              // Standard 10-digit phone number formats
              matches('##########'),
              matches('##########'),
              matches('###-###-####'),
              matches('###-###-####'),
              // Optional 10-digit local phone number format
              matches('(###)###-####'),
              matches('(###)###-####'),
              // Non-standard 10-digit phone number format
              matches('###.###.####'),
              matches('###.###.####'),
              // Standard 10-digit phone number format with extensions
              matches('###-###-####x###'),
              matches('###-###-####x####'),
              matches('###-###-####x#####'),
              // Optional 10-digit local phone number format with extensions
              matches('(###)###-####x###'),
              matches('(###)###-####x####'),
              matches('(###)###-####x#####'),
              // Non-standard 10-digit phone number format with extensions
              matches('###.###.####x###'),
              matches('###.###.####x####'),
              matches('###.###.####x#####'),
              // Standard 11-digit phone number format
              matches('+1-###-###-####'),
              matches('001-###-###-####'),
              // Standard 11-digit phone number format with extensions
              matches('+1-###-###-####x###'),
              matches('+1-###-###-####x####'),
              matches('+1-###-###-####x#####'),
              matches('001-###-###-####x###'),
              matches('001-###-###-####x####'),
              matches('001-###-###-####x#####'),
            ],
          ),
        );
      }
    });
  });
}

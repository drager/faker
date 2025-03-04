import 'package:faker/faker.dart';
import 'package:test/test.dart';

void main() {
  var faker = Faker();
  var fakerKr = Faker(provider: FakerDataProviderKr());

  group('animals', () {
    test('should be able to generate animal name in en-us', () {
      expect(
          faker.animal.name(), matches(RegExp(r"^([\w\s\&\/\,\.\ö\’\'-])+$")));
    });
    test('should be able to generate animal name in ko-kr', () {
      expect(fakerKr.animal.name(),
          matches(RegExp(r"^([\w\s\uAC00-\uD7A3\'\-\(\)])+$")));
    });
  });
}

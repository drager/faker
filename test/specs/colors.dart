import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  group('colors', () {
    test('should be able to generate any color', () {
      for (var i = 0; i < 10; i++) {
        expect(
            faker.color.color(),
            anyOf(matches(r'^[^ ]+ [^ ]$'), matches(r"^[\w-']+$"),
                matches(r"^[\w,' ]+[\w ]$")));
      }
    });

    test('should be able to generate a common color', () {
      for (var i = 0; i < 10; i++) {
        expect(
            faker.color.commonColor(),
            anyOf(matches(r'^[^ ]+ [^ ]$'), matches(r"^[\w-']+$"),
                matches(r"^[\w,' ]+[\w ]$")));
      }
    });
  });
}

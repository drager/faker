import 'package:faker/src/colors.dart';
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

    test('should be able to generate a rgb color', () {
      final color = faker.color.rgbColor();
      expect(color, matches(r'^(#[a-f0-9]{6})$'));
    });

    test('should be able to generate a rgb color with 0x prefix', () {
      final color = faker.color.rgbColor(prefix: '0x');
      expect(color, matches(r'^(0x[a-f0-9]{6})$'));
    });

    test('should be able to generate a rgb color with 0x prefix lowercase', () {
      final color = faker.color.rgbColor(prefix: '0x', casing: Casing.lower);
      expect(color, matches(r'^(0x[a-f0-9]{6})$'));
    });

    test('should be able to generate a rgb color with 0x prefix uppercase', () {
      final color = faker.color.rgbColor(prefix: '0x', casing: Casing.upper);
      expect(color, matches(r'^(0x[A-F0-9]{6})$'));
    });

    test('should be able to generate a rgb color using css format', () {
      final color = faker.color.rgbColor(format: Format.css);
      expect(color, matches(r'^(rgb\([0-9]{1,3}, [0-9]{1,3}, [0-9]{1,3}\))$'));
    });

    test('should be able to generate a rgb color using alpha', () {
      final color = faker.color.rgbColor(includeAlpha: true);
      expect(color, matches(r'^(#[a-fA-F0-9]{8})$'));
    });

    test(
      'should be able to generate a rgb color using css format and alpha',
      () {
        final color = faker.color.rgbColor(
          format: Format.css,
          includeAlpha: true,
        );
        expect(
          color,
          matches(r'^(rgba\([0-9]{1,3}, [0-9]{1,3}, [0-9]{1,3}, \d*\.?\d*\))$'),
        );
      },
    );
  });
}

import 'package:faker/faker.dart';
import 'package:test/test.dart';

void main() {
  group('Image', () {
    group('Custom image', () {
      test('should be able to generate a url image with default params', () {
        expect(
          faker.image.image(),
          'https://picsum.photos/640/480',
        );
      });

      test('should be able to generate a url image with custom size', () {
        expect(
          faker.image.image(width: 1600, height: 900),
          'https://picsum.photos/1600/900',
        );
      });

      test('keywords are deprecated and not added to the url', () {
        expect(
          faker.image.image(keywords: ["nature"]),
          faker.image.image(keywords: ["technology"]),
        );
      });

      test('random should add a generated param to avoid caching', () {
        expect(
          faker.image.image(random: true),
          matches(RegExp('^https://picsum.photos/640/480\\?random=\\d+\$')),
        );
      });

      test('seed should add a seed param to get the same image every time', () {
        expect(
          faker.image.loremPicsum(seed: 'test', width: 1600, height: 900),
          'https://picsum.photos/seed/test/1600/900',
        );
      });

      test('imageFormat should add an extension to the URL', () {
        expect(
          faker.image.loremPicsum(imageFormat: ImageFormat.webp),
          'https://picsum.photos/640/480.webp',
        );
      });
    });
  });
}

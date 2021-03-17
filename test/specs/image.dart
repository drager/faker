import 'package:faker/faker.dart';
import 'package:test/test.dart';

void main() {
  group('Image', () {
    group('Custom image', () {
      test('should be able to generate a url image with default params', () {
        expect(faker.image.image(), 'https://source.unsplash.com/640x480');
      });

      test('should be able to generate a url image with custom size', () {
        expect(faker.image.image(width: 1600, height: 900),
            'https://source.unsplash.com/1600x900');
      });

      test('should be able to generate a url image with nature keyword', () {
        expect(faker.image.image(keywords: ["nature"]),
            'https://source.unsplash.com/640x480?nature');
      });

      test(
          'should be able to generate a url for image with custom size and technology keyword',
          () {
        expect(
            faker.image
                .image(width: 1200, height: 900, keywords: ["technology"]),
            'https://source.unsplash.com/1200x900?technology');
      });

      test(
          'should be able to generate a url image with nature and people keywords',
          () {
        expect(faker.image.image(keywords: ["nature", "people"]),
            'https://source.unsplash.com/640x480?nature,people');
      });
    });
  });
}

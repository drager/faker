import 'package:faker/faker.dart';
import 'package:test/test.dart';

void main() {
  var faker = Faker();

  group('person', () {
    test('should be able to generate phone number', () {
      for (var i = 0; i < 20; i++) {
        expect(
          faker.phoneNumber.us(),
          anyOf(
            [
              // Standard 10-digit phone number formats
              matches(r'\d{10}'),
              matches(r'\d{3}-\d{3}-\d{3}'),
              // Optional 10-digit local phone number format
              matches(r'\(\d{3}\)\d{3}-\d{3}'),
              // Non-standard 10-digit phone number format
              matches(r'\d{3}.\d{3}.\d{4}'),
              // Standard 10-digit phone number format with extensions
              matches(r'\d{3}-\d{3}-\d{4}x\d{3}'),
              matches(r'\d{3}-\d{3}-\d{4}x\d{4}'),
              matches(r'\d{3}-\d{3}-\d{4}x\d{5}'),
              // Optional 10-digit local phone number format with extensions
              matches(r'\(\d{3}\)\d{3}-\d{4}x\d{3}'),
              matches(r'\(\d{3}\)\d{3}-\d{4}x\d{4}'),
              matches(r'\(\d{3}\)\d{3}-\d{4}x\d{5}'),
              // Non-standard 10-digit phone number format with extensions
              matches(r'\d{3}.\d{3}.\d{4}x\d{3}'),
              matches(r'\d{3}.\d{3}.\d{4}x\d{4}'),
              matches(r'\d{3}.\d{3}.\d{4}x\d{5}'),
              // Standard 11-digit phone number format
              matches(r'\+1-\d{3}-\d{3}-\d{4}'),
              matches(r'001-\d{3}-\d{3}-\d{4}'),
              // Standard 11-digit phone number format with extensions
              matches(r'\+1-\d{3}-\d{3}-\d{4}x\d{3}'),
              matches(r'\+1-\d{3}-\d{3}-\d{4}x\d{4}'),
              matches(r'\+1-\d{3}-\d{3}-\d{4}x\d{5}'),
              matches(r'001-\d{3}-\d{3}-\d{4}x\d{3}'),
              matches(r'001-\d{3}-\d{3}-\d{4}x\d{4}'),
              matches(r'001-\d{3}-\d{3}-\d{4}x\d{5}'),
            ],
          ),
        );
      }
    });
  });
}

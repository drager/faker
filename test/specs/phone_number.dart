import 'package:faker/faker.dart';
import 'package:test/test.dart';

void main() {
  var faker = Faker();

  group('us', () {
    test('should be able to generate us phone number', () {
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
  group('de', () {
    test('should be able to generate de phone number', () {
      for (var i = 0; i < 40; i++) {
        expect(
          faker.phoneNumber.de(),
          anyOf(
            [
              // '0###########',
              matches(r'0\d{11}'),
              // '0### ########',
              matches(r'0\d{3} \d{8}'),
              // '0### # #######',
              matches(r'0\d{3} \d{1} \d{7}'),
              // '0### ######-##',
              matches(r'0\d{3} \d{6}-\d{2}'),
              // '0### ###### - ##',
              matches(r'0\d{3} \d{6} - \d{2}'),
              // '0### ######/##',
              matches(r'0\d{3} \d{6}\/\d{2}'),
              // '(0###) ########',
              matches(r'\(0\d{3}\) \d{8}'),
              // '(0###) # #######',
              matches(r'\(0\d{3}\) \d{1} \d{7}'),
              // '(0###) ######-##',
              matches(r'\(0\d{3}\) \d{6}-\d{2}'),
              // '(0###) ###### - ##',
              matches(r'\(0\d{3}\) \d{6} - \d{2}'),
              // '(0###) ######/##',
              matches(r'\(0\d{3}\) \d{6}\/\d{2}'),
              // '+49 (###) ########',
              matches(r'\+49 \(\d{3}\) \d{6}\d{2}'),
              // '+49 (###) # #######',
              matches(r'\+49 \(\d{3}\) \d{1} \d{7}'),
              // '+49 (###) ######-##',
              matches(r'\+49 \(\d{3}\) \d{6}-\d{2}'),
              // '+49 (###) ###### - ##',
              matches(r'\+49 \(\d{3}\) \d{6} - \d{2}'),
              // '+49 (###) ######x##',
              matches(r'\+49 \(\d{3}\) \d{6}x\d{2}'),
              // '+49 (###) ######/##',
              matches(r'\+49 \(\d{3}\) \d{6}\/\d{2}'),
              // '+49 (0)### ########',
              matches(r'\+49 \(0\)\d{3} \d{8}'),
              // '+49 (0)### # #######',
              matches(r'\+49 \(0\)\d{3} \d{1} \d{7}'),
              // '+49 (0)### ######-##',
              matches(r'\+49 \(0\)\d{3} \d{6}-\d{2}'),
              // '+49 (0)### ###### - ##',
              matches(r'\+49 \(0\)\d{3} \d{6} - \d{2}'),
              // '+49 (0)### ######x##',
              matches(r'\+49 \(0\)\d{3} \d{6}x\d{2}'),
              // '+49 (0)### ######/##',
              matches(r'\+49 \(0\)\d{3} \d{6}/\d{2}'),
              // '0049 (###) ########',
              matches(r'0049 \(\d{3}\) \d{8}'),
              // '0049 (###) # #######',
              matches(r'0049 \(\d{3}\) \d{1} \d{7}'),
              // '0049 (###) ######-##',
              matches(r'0049 \(\d{3}\) \d{6}-\d{2}'),
              // '0049 (###) ###### - ##',
              matches(r'0049 \(\d{3}\) \d{6} - \d{2}'),
              // '0049 (###) ######x##',
              matches(r'0049 \(\d{3}\) \d{6}x\d{2}'),
              // '0049 (###) ######/##',
              matches(r'0049 \(\d{3}\) \d{6}\/\d{2}'),
              // '0049 (0)### ########',
              matches(r'0049 \(0\)\d{3} \d{8}'),
              // '0049 (0)### # #######',
              matches(r'0049 \(0\)\d{3} \d{1} \d{7}'),
              // '0049 (0)### ######-##',
              matches(r'0049 \(0\)\d{3} \d{6}-\d{2}'),
              // '0049 (0)### ###### - ##',
              matches(r'0049 \(0\)\d{3} \d{6} - \d{2}'),
              // '0049 (0)### ######x##',
              matches(r'0049 \(0\)\d{3} \d{6}x\d{2}'),
              // '0049 (0)### ######/##',
              matches(r'0049 \(0\)\d{3} \d{6}\/\d{2}'),
            ],
          ),
        );
      }
    });
  });
}

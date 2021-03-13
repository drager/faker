import 'random_generator.dart';

class PhoneNumber {
  static const usPhoneNumberPatterns = [
    // Standard 10-digit phone number formats
    '##########',
    '##########',
    '###-###-####',
    '###-###-####',
    // Optional 10-digit local phone number format
    '(###)###-####',
    '(###)###-####',
    // Non-standard 10-digit phone number format
    '###.###.####',
    '###.###.####',
    // Standard 10-digit phone number format with extensions
    '###-###-####x###',
    '###-###-####x####',
    '###-###-####x#####',
    // Optional 10-digit local phone number format with extensions
    '(###)###-####x###',
    '(###)###-####x####',
    '(###)###-####x#####',
    // Non-standard 10-digit phone number format with extensions
    '###.###.####x###',
    '###.###.####x####',
    '###.###.####x#####',
    // Standard 11-digit phone number format
    '+1-###-###-####',
    '001-###-###-####',
    // Standard 11-digit phone number format with extensions
    '+1-###-###-####x###',
    '+1-###-###-####x####',
    '+1-###-###-####x#####',
    '001-###-###-####x###',
    '001-###-###-####x####',
    '001-###-###-####x#####',
  ];

  const PhoneNumber(this.random);

  final RandomGenerator random;

  String us() => random.fromPattern(usPhoneNumberPatterns);
}

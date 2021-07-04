import 'package:faker/src/data/phone_number/phone_number_patterns.dart';

import 'random_generator.dart';

class PhoneNumber {
  const PhoneNumber(this.random);

  final RandomGenerator random;

  /// creates a random phonenumber by replacing the '#' character in the given [patterns]
  /// [pattern] is optional if null default phone-number pattern will be used
  ///
  /// example:
  ///   ```dart
  ///       var phoneNumberPatterns = [
  ///           '+1-###-###-####',
  ///           '001-###-###-####',
  ///       ];
  ///
  ///       var randomPhoneNumber = faker.phoneNumber.us(phoneNumberPatterns);
  ///   ```
  String us([List<String>? patterns]) =>
      random.fromPattern(patterns ?? usPhoneNumberPatterns);

  /// creates a random phonenumber by replacing the '#' character in the given [patterns]
  /// [pattern] is optional if null default phone-number pattern will be used
  ///
  /// example:
  ///   ```dart
  ///       var phoneNumberPatterns = [
  ///           '+1-###-###-####',
  ///           '001-###-###-####',
  ///       ];
  ///
  ///       var randomPhoneNumber = faker.phoneNumber.iran(phoneNumberPatterns);
  ///   ```
  String iran([List<String>? patterns]) =>
      random.fromPattern(patterns ?? iranPhoneNumberPatterns);
}

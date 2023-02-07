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
  static const dePhoneNumberPatterns = [
    //0###
    '0###########',
    '0### ########',
    '0### # #######',
    '0### ######-##',
    '0### ###### - ##',
    '0### ######/##',
    // (0###)
    '(0###) ########',
    '(0###) # #######',
    '(0###) ######-##',
    '(0###) ###### - ##',
    '(0###) ######/##',
    //+49 (###)
    '+49 (###) ########',
    '+49 (###) # #######',
    '+49 (###) ######-##',
    '+49 (###) ###### - ##',
    '+49 (###) ######x##',
    '+49 (###) ######/##',
    //+49 (0)###
    '+49 (0)### ########',
    '+49 (0)### # #######',
    '+49 (0)### ######-##',
    '+49 (0)### ###### - ##',
    '+49 (0)### ######x##',
    '+49 (0)### ######/##',
    //0049 (###)
    '0049 (###) ########',
    '0049 (###) # #######',
    '0049 (###) ######-##',
    '0049 (###) ###### - ##',
    '0049 (###) ######x##',
    '0049 (###) ######/##',
    //0049 (0)###
    '0049 (0)### ########',
    '0049 (0)### # #######',
    '0049 (0)### ######-##',
    '0049 (0)### ###### - ##',
    '0049 (0)### ######x##',
    '0049 (0)### ######/##',
  ];

  const PhoneNumber(this._random);

  final RandomGenerator _random;

  String us() => _random.fromPattern(usPhoneNumberPatterns);

  String de() => _random.fromPattern(dePhoneNumberPatterns);
}

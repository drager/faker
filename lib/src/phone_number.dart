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
  static const jaPhoneNumberPatterns = [
    // // Standard non-geographic 10-digit phone number formats
    '0#########',
    '0#-####-####',
    '(0#) ####-####',
    '0##-###-####',
    '(0##) ###-####',
    '0###-##-####',
    '(0###) ##-####',
    // // Standard non-geographic 11-digit phone number formats
    '0##########',
    '0#-#####-####',
    '(0#) #####-####',
    '0##-####-####',
    '(0##) ####-####',
    '0###-###-####',
    '(0###) ###-####',
    // // Standard non-geographic 10-digit phone number formats with country code
    '+810#########',
    '+81-0#########',
    '+81 0#########',
    '+81-0#-####-####',
    '+81 0#-####-####',
    '+81 (0#) ####-####',
    '+81-0##-###-####',
    '+81 0##-###-####',
    '+81 (0##) ###-####',
    '+81-0###-##-####',
    '+81 0###-##-####',
    '+81 (0###) ##-####',
    // // Standard non-geographic 11-digit phone number formats with country code
    '+810##########',
    '+81-0#-#####-####',
    '+81 0#-#####-####',
    '+81 (0#) #####-####',
    '+81-0##-####-####',
    '+81 0##-####-####',
    '+81 (0##) ####-####',
    '+81-0###-###-####',
    '+81 0###-###-####',
    '+81 (0###) ###-####',
  ];
  static const krPhoneNumberPatterns = [
    // Standard 10-digit phone number formats
    '010########',
    '010-####-####',
    '010.####.####',
    // Standard 11-digit phone number formats
    '01#########',
    '01#-###-####',
    '01#.###.####',
    // Standard 11-digit phone number formats with country code
    '+82-10-####-####',
    '+82 10 #### ####',
    '+82-1#-###-####',
    '+82 1# ### ####',
  ];

  const PhoneNumber(this.random);

  final RandomGenerator random;

  String us() => random.fromPattern(usPhoneNumberPatterns);

  String de() => random.fromPattern(dePhoneNumberPatterns);

  String ja() => random.fromPattern(jaPhoneNumberPatterns);

  String kr() => random.fromPattern(krPhoneNumberPatterns);
}

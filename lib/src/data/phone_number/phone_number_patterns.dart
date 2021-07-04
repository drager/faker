const usPhoneNumberPatterns = [
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

const iranPhoneNumberPatterns = [
  // mobile numbers
  '0911#######',
  '0921#######',
  '093########',
  '09#########',
  // local phone numbers (land line)
  '0##########',
  '0###########',
];

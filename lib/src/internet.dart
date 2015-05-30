part of faker;

class Internet {
  static const _hosts = const ['gmail.com', 'yahoo.com', 'hotmail.com'];
  static const _domainSuffixes = const [
    'co.uk',
    'com',
    'us',
    'ca',
    'biz',
    'info',
    'name'
  ];
  static const _disposibleHosts = const [
    'mailinator.com',
    'suremail.info',
    'spamherelots.com',
    'binkmail.com',
    'safetymail.info'
  ];

  /// Generates an email from the [userName] and [domainName] methods.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.email();
  /// ```
  String email() => [userName(), domainName()].join('@');

  /// Generates a disposable email from the [userName] method
  /// and [_disposibleHosts].
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.disposableEmail();
  /// ```
  String disposableEmail() =>
      [userName(), randomElement(_disposibleHosts)].join('@');

  /// Generates a free email from the [userName] method and [_hosts].
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.freeEmail();
  /// ```
  String freeEmail() => '${userName()}@${randomElement(_hosts)}';

  /// Generates a safe email from [userName] method and [_domainSuffixes].
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.safeEmail();
  /// ```
  String safeEmail() =>
      [userName(), 'example.${randomElement(_domainSuffixes)}'].join('@');

  /// Generates a user name.
  ///
  /// The user name can contain one of the following: -._ combined
  /// with first name and last name.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.userName();
  /// ```
  String userName() => ([
    randomElement(firstnames),
    randomElement(lastnames)
  ]..shuffle()).join(randomElement(['_', '.', '-'])).toLowerCase();

  /// Generates a domain name from the [domainWord] method and [_domainSuffixes].
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.domainName();
  /// ```
  domainName() => '${domainWord()}.${randomElement(_domainSuffixes)}';

  /// Generates a domain word.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.domainWord();
  /// ```
  domainWord() => randomElement(lastnames).toLowerCase();

  /// Generates a URI with the given [protocol].
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.uri('ftp');
  /// ```
  String uri(String protocol) => Uri.encodeFull('$protocol://${domainName()}');

  /// Generates a http url.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.httpUrl();
  /// ```
  String httpUrl() => uri('http');

  /// Generates a https url.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.httpsUrl();
  /// ```
  String httpsUrl() => uri('https');

  /// Generates a IP version 4 address.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.ipv4Address();
  /// ```
  String ipv4Address() => randomNumber(255, 4).join('.');

  /// Generates a IP version 6 address.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.ipv6Address();
  /// ```
  String ipv6Address() =>
      randomNumber(65535, 8).map((x) => x.toRadixString(16)).join(':');

  /// Generates a MAC address.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.macAddress();
  /// ```
  String macAddress() => randomNumber(0xff, 6)
      .map((number) => '${number.toRadixString(16).padLeft(2, '0')}')
      .join(':');

  /// Generates a password with the given [length] if provided.
  /// If not provided [length] is 10.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.password();
  /// ```
  String password({int length: 10}) => new String.fromCharCodes(
      randomNumber(92, length).map((value) => value + 33));
}

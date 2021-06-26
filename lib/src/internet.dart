import 'data/person/defaults/firstnames.dart';
import 'data/user_agent/user_agent.dart';
import 'data/user_agent/user_agent_data.dart';
import 'data/person/defaults/lastnames.dart';
import 'random_generator.dart';

class Internet {
  static const _hosts = ['gmail.com', 'yahoo.com', 'hotmail.com'];
  static const _domainSuffixes = [
    'co.uk',
    'com',
    'us',
    'ca',
    'biz',
    'info',
    'name'
  ];
  static const _disposableHosts = [
    'mailinator.com',
    'suremail.info',
    'spamherelots.com',
    'binkmail.com',
    'safetymail.info'
  ];

  const Internet(this.random);

  final RandomGenerator random;

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
      [userName(), random.element(_disposableHosts)].join('@');

  /// Generates a free email from the [userName] method and [_hosts].
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.freeEmail();
  /// ```
  String freeEmail() => '${userName()}@${random.element(_hosts)}';

  /// Generates a safe email from [userName] method and [_domainSuffixes].
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.safeEmail();
  /// ```
  String safeEmail() =>
      [userName(), 'example.${random.element(_domainSuffixes)}'].join('@');

  /// Generates a user name.
  ///
  /// The user name can contain one of the following: -._ combined
  /// with first name and last name.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.userName();
  /// ```
  String userName() =>
      ([random.element(firstnames), random.element(lastnames)]..shuffle())
          .join(random.element(['_', '.', '-']))
          .toLowerCase();

  /// Generates a domain name from the [domainWord] method and [_domainSuffixes].
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.domainName();
  /// ```
  String domainName() => '${domainWord()}.${random.element(_domainSuffixes)}';

  /// Generates a domain word.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.domainWord();
  /// ```
  String domainWord() => random.element(lastnames).toLowerCase().replaceAll(
      RegExp(r'[^a-z0-9\-]'), ''); // -- remove illegal domain characters

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
  String ipv4Address() => random.numbers(255, 4).join('.');

  /// Generates a IP version 6 address.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.ipv6Address();
  /// ```
  String ipv6Address() =>
      random.numbers(65535, 8).map((x) => x.toRadixString(16)).join(':');

  /// Generates a MAC address.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.macAddress();
  /// ```
  String macAddress() => random
      .numbers(0xff, 6)
      .map((number) => '${number.toRadixString(16).padLeft(2, '0')}')
      .join(':');

  /// Generates a password with the given [length] if provided.
  /// If not provided [length] is 10.
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.password();
  /// ```
  String password({int length = 10}) => random.string(length, min: length);

  /// Generates an User Agent from Predefined Dictionary
  /// with the given [osName] if provided.
  /// if not provided [osName] is an empty String or ['']
  ///
  /// Example:
  /// ```dart
  ///   faker.internet.userAgent();
  ///   faker.internet.userAgent(osName:'ios');
  /// ```
  String userAgent({String osName = ''}) => random
      .element(UserAgents.fromJson(userAgentDatas)
          .userAgents!
          .map((e) => e)
          .where(
            (element) =>
                element.osName!.toLowerCase().contains(osName.toLowerCase()),
          )
          .toList())
      .userAgent
      .toString();
}

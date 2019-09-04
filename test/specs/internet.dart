import 'package:test/test.dart';
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  group('internet', () {
    test('should be able to generate email', () {
      expect(faker.internet.email(), matches(new RegExp(r'[a-zA-Z.+]+@[a-zA-Z.]+')));
    });

    test('should be able to generate disposable email', () {
      expect(faker.internet.disposableEmail(), matches(new RegExp(r'[a-zA-Z.+]+@[a-zA-Z.]+')));
    });

    test('should be able to generate free email', () {
      expect(faker.internet.freeEmail(), matches(new RegExp(r'[a-zA-Z.+]+@[a-zA-Z.]+')));
    });

    test('should be able to generate safe email', () {
      expect(faker.internet.safeEmail(), matches(new RegExp(r'[a-zA-Z.+]+@[a-zA-Z.]+')));
    });

    test('should be able to generate user name', () {
      expect(faker.internet.userName(), matches(new RegExp(r'[a-z]+((_|-|\.)[a-z]+)')));
    });

    test('should be able to generate domain name', () {
      expect(faker.internet.domainName(), matches(new RegExp(r'^((?!-)[A-Za-z0-9-]{1,63}).+[A-Za-z]{2,6}$')));
    });

    test('should be able to generate domain word', () {
      expect(faker.internet.domainWord(), matches(new RegExp(r"^[\w']+$")));
    });

    test('should be able to generate uri', () {
      expect(faker.internet.uri('ftp'), matches(new RegExp(r'^(ftp://.+)$')));
    });

    test('should be able to generate http url', () {
      expect(faker.internet.httpUrl(), matches(new RegExp(r'^(http://.+)$')));
    });

    test('should be able to generate https url', () {
      expect(faker.internet.httpsUrl(), matches(new RegExp(r'^(https://.+)$')));
    });

    test('should be able to generate ipv4 address', () {
      expect(Uri.parseIPv4Address(faker.internet.ipv4Address()), hasLength(4));
    });

    test('should be able to generate ipv6 address', () {
      expect(Uri.parseIPv6Address(faker.internet.ipv6Address()), hasLength(16));
    });

    test('should be able to generate mac address', () {
      expect(faker.internet.macAddress(), matches(new RegExp(r'^([\da-f]{2}[:]){5}([\da-f]{2})$')));
    });

    test('should be able to generate password', () {
      expect(faker.internet.password(length: 40), hasLength(40));
    });
  });
}

library faker.test.faker.internet;

import 'package:guinness/guinness.dart';
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  describe('internet', () {
    it('should be able to generate email', () {
      expect(new RegExp(r'[a-zA-Z.+]+@[a-zA-Z.]+')
          .hasMatch(faker.internet.email())).toBeTrue();
    });

    it('should be able to generate disposable email', () {
      expect(new RegExp(r'[a-zA-Z.+]+@[a-zA-Z.]+')
          .hasMatch(faker.internet.disposableEmail())).toBeTrue();
    });

    it('should be able to generate free email', () {
      expect(new RegExp(r'[a-zA-Z.+]+@[a-zA-Z.]+')
          .hasMatch(faker.internet.freeEmail())).toBeTrue();
    });

    it('should be able to generate safe email', () {
      expect(new RegExp(r'[a-zA-Z.+]+@[a-zA-Z.]+')
          .hasMatch(faker.internet.safeEmail())).toBeTrue();
    });

    it('should be able to generate user name', () {
      expect(new RegExp(r'[a-z]+((_|-|\.)[a-z]+)')
          .hasMatch(faker.internet.userName())).toBeTrue();
    });

    it('should be able to generate domain name', () {
      expect(new RegExp(r'^((?!-)[A-Za-z0-9-]{1,63}).+[A-Za-z]{2,6}$')
          .hasMatch(faker.internet.domainName())).toBeTrue();
    });

    it('should be able to generate domain word', () {
      expect(new RegExp(r'^(\w+)$').hasMatch(faker.internet.domainWord()))
          .toBeTrue();
    });

    it('should be able to generate uri', () {
      expect(new RegExp(r'^(ftp://.+)$').hasMatch(faker.internet.uri('ftp')))
          .toBeTrue();
    });

    it('should be able to generate http url', () {
      expect(new RegExp(r'^(http://.+)$').hasMatch(faker.internet.httpUrl()))
          .toBeTrue();
    });

    it('should be able to generate https url', () {
      expect(new RegExp(r'^(https://.+)$').hasMatch(faker.internet.httpsUrl()))
          .toBeTrue();
    });

    it('should be able to generate ipv4 address', () {
      expect(Uri.parseIPv4Address(faker.internet.ipv4Address()).length)
          .toEqual(4);
    });

    it('should be able to generate ipv6 address', () {
      expect(Uri.parseIPv6Address(faker.internet.ipv6Address()).length)
          .toEqual(16);
    });

    it('should be able to generate mac address', () {
      expect(new RegExp(r'^([\w+a-f]{2}[:]){5}([\w+a-f]{2})$')
          .hasMatch(faker.internet.macAddress())).toBeTrue();
    });
  });
}

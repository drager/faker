import 'dart:convert';
import 'package:test/test.dart';

import 'package:faker/src/jwt.dart';

void main() {
  var fakerJwt = Jwt();

  Map<String, dynamic> decode(String token) {
    final splitToken = token.split(".");
    if (splitToken.length != 3) {
      throw FormatException('Invalid token');
    }
    try {
      final payloadBase64 = splitToken[1];
      final normalizedPayload = base64.normalize(payloadBase64);
      final payloadString = utf8.decode(base64.decode(normalizedPayload));
      final decodedPayload = jsonDecode(payloadString);

      return decodedPayload;
    } catch (error) {
      throw FormatException('Invalid payload');
    }
  }

  DateTime getExpirationDate(String token) {
    final decodedToken = decode(token);

    final expirationDate = DateTime.fromMillisecondsSinceEpoch(0)
        .add(Duration(seconds: decodedToken['exp'].toInt()));
    return expirationDate;
  }

  bool isExpired(String token) {
    final expirationDate = getExpirationDate(token);

    return DateTime.now().isAfter(expirationDate);
  }

  group('valid', () {
    test('should return a valid jwt without expiresIn value', () {
      final token = fakerJwt.valid();

      expect(isExpired(token), false);
    });

    test('should return a correct payload', () {
      final exp = DateTime.now().add(Duration(hours: 1));
      final token = fakerJwt.valid(expiresIn: exp);
      final payload = decode(token);

      expect(isExpired(token), false);
      expect(payload['exp'], exp.millisecondsSinceEpoch ~/ 1000);
    });

    test('should throws if expiresIn is not future date', () {
      final exp = DateTime.now().subtract(Duration(hours: 1));

      expect(
        () => fakerJwt.valid(expiresIn: exp),
        throwsA(isA<FormatException>()),
      );
    });
  });

  group('expired', () {
    test('should return a expired jwt without expiresIn value', () {
      final token = fakerJwt.expired();

      expect(isExpired(token), true);
    });

    test('should return a correct payload', () {
      final exp = DateTime.now().subtract(Duration(hours: 1));
      final token = fakerJwt.expired(expiresIn: exp);
      final payload = decode(token);

      expect(isExpired(token), true);
      expect(payload['exp'], exp.millisecondsSinceEpoch ~/ 1000);
    });

    test('should throws if expiresIn is not past date', () {
      final exp = DateTime.now().add(Duration(hours: 1));

      expect(
        () => fakerJwt.expired(expiresIn: exp),
        throwsA(isA<FormatException>()),
      );
    });
  });

  group('custom', () {
    test('should return a expired jwt if expiresIn is a past date', () {
      final exp = DateTime.now().subtract(Duration(hours: 1));
      final token = fakerJwt.custom(
        expiresIn: exp,
        payload: {'any_key': 'any_value'},
      );

      expect(isExpired(token), true);
    });

    test('should return a valid jwt if expiresIn is a future date', () {
      final exp = DateTime.now().add(Duration(hours: 1));
      final token = fakerJwt.custom(
        expiresIn: exp,
        payload: {'any_key': 'any_value'},
      );

      expect(isExpired(token), false);
    });

    test('should return a correct payload', () {
      final exp = DateTime.now().add(Duration(hours: 1));
      final token = fakerJwt.custom(
        expiresIn: exp,
        payload: {'any_key': 'any_value'},
      );
      final payload = decode(token);

      expect(isExpired(token), false);
      expect(payload['exp'], exp.millisecondsSinceEpoch ~/ 1000);
      expect(payload['any_key'], 'any_value');
    });

    test('should override the exp param of payload', () {
      final expiresIn = DateTime.now().add(Duration(hours: 1));
      final payLoadExp = (DateTime.now()).millisecondsSinceEpoch / 1000;
      final token = fakerJwt.custom(
        expiresIn: expiresIn,
        payload: {'exp': payLoadExp, 'any_key': 'any_value'},
      );
      final payload = decode(token);

      expect(isExpired(token), false);
      expect(payload['exp'], expiresIn.millisecondsSinceEpoch ~/ 1000);
      expect(payload['any_key'], 'any_value');
    });

    test('should preserve the iat param of payload', () {
      final expiresIn = DateTime.now().add(Duration(hours: 1));
      final iat =
          DateTime.now().subtract(Duration(hours: 1)).millisecondsSinceEpoch;

      final token = fakerJwt.custom(
        expiresIn: expiresIn,
        payload: {'exp': expiresIn, 'iat': iat},
      );
      final payload = decode(token);

      expect(isExpired(token), false);
      expect(payload['exp'], expiresIn.millisecondsSinceEpoch ~/ 1000);
      expect(payload['iat'], iat);
    });
  });
}

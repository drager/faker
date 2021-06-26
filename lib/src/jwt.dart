import 'dart:convert';
import 'package:crypto/crypto.dart';

class Jwt {
  final secret = 'faker_jwt_secret';

  String _base64Encode(String data) {
    return base64.encode(utf8.encode(data)).replaceAll('=', '');
  }

  String _generate_header() {
    final data = jsonEncode({
      'alg': 'HS256',
      'typ': 'JWT',
    }).toString();

    return _base64Encode(data);
  }

  String _generate_payload(Map payload) {
    if (payload['exp'] == null) {
      throw Exception('payload without exp param');
    }

    final data = jsonEncode(payload).toString();

    return _base64Encode(data);
  }

  String _generate_signature(String header, String payload) {
    final data = '$header.$payload';
    final hmac = Hmac(sha256, base64.decode(secret));
    final digest = hmac.convert(utf8.encode(data));
    final signature = base64
        .encode(digest.bytes)
        .replaceAll('+', '-')
        .replaceAll('/+', '-')
        .replaceAll('/', '_')
        .replaceAll('=', '');

    return signature;
  }

  int dateToSeconds(DateTime date) {
    return date.millisecondsSinceEpoch ~/ 1000;
  }

  String valid({DateTime? expiresIn}) {
    if (expiresIn != null && DateTime.now().isAfter(expiresIn)) {
      throw FormatException('expiresIn should be a future date');
    }

    // default expiration with 1 hour
    final expiration = expiresIn != null
        ? dateToSeconds(expiresIn)
        : dateToSeconds(DateTime.now()) + 3600;

    final _header = _generate_header();
    final _payload = _generate_payload({
      'iat': dateToSeconds(DateTime.now()),
      'exp': expiration,
    });
    final _signature = _generate_signature(_header, _payload);

    return '$_header.$_payload.$_signature';
  }

  String expired({DateTime? expiresIn}) {
    if (expiresIn != null && DateTime.now().isBefore(expiresIn)) {
      throw FormatException('expiresIn should be a past date');
    }

    // expired at one hour
    final expiration = expiresIn != null
        ? dateToSeconds(expiresIn)
        : dateToSeconds(DateTime.now()) - 3600;

    final _header = _generate_header();
    final _payload = _generate_payload({
      'iat': dateToSeconds(DateTime.now()),
      'exp': expiration,
    });
    final _signature = _generate_signature(_header, _payload);

    return '$_header.$_payload.$_signature';
  }

  String custom({required DateTime expiresIn, required Map payload}) {
    final _header = _generate_header();
    final _payload = _generate_payload(
      payload
        ..addAll({
          'iat': payload['iat'] ?? dateToSeconds(DateTime.now()),
          'exp': dateToSeconds(expiresIn),
        }),
    );
    final _signature = _generate_signature(_header, _payload);

    return '$_header.$_payload.$_signature';
  }
}

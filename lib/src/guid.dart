import 'random_generator.dart';

class Guid {
  const Guid(this._random);

  final RandomGenerator _random;

  String guid() =>
      _random.fromPatternToHex(['########-####-####-####-############']);
}

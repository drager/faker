import 'random_generator.dart';

class Guid {
  const Guid(this.random);

  final RandomGenerator random;

  String? guid() =>
      random.fromPatternToHex(['########-####-####-####-############']);
}

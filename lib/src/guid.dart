import 'random_generator.dart';

class Guid {
  const Guid();

  String guid() =>
      random.fromPatternToHex(['########-####-####-####-############']);
}

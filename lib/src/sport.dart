import 'data/sport/sport_names.dart';
import 'random_generator.dart';

class Sport {
  const Sport(this._random);

  final RandomGenerator _random;

  /// Generates a sport name.
  ///
  /// Example:
  /// ```dart
  ///   faker.sport.name();
  /// ```
  String name() => _random.element(sportNames);
}

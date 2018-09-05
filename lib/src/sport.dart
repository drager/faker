import 'data/sport/sport_names.dart';
import 'random_generator.dart';

class Sport {
  const Sport();

  /// Generates a sport name.
  ///
  /// Example:
  /// ```dart
  ///   faker.sport.name();
  /// ```
  String name() => random.element(sportNames);
}

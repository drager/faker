import 'package:faker/src/providers/base_providers.dart';

import 'random_generator.dart';

class Sport {
  const Sport(this.random, this.provider);

  final SportNamesProvider provider;
  final RandomGenerator random;

  /// Generates a sport name.
  ///
  /// Example:
  /// ```dart
  ///   faker.sport.name();
  /// ```
  String name() => random.element(provider.sportNames());
}

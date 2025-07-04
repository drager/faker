import 'package:faker/src/providers/base_providers.dart';

import 'random_generator.dart';

class Sport {
  const Sport(this.random, this.dataProvider);

  final RandomGenerator random;

  final SportsDataProvider dataProvider;

  /// Generates a sport name.
  ///
  /// Example:
  /// ```dart
  ///   faker.sport.name();
  /// ```
  String name() => random.element(dataProvider.sportNames());
}

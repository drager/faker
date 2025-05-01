import 'package:faker/src/providers/base_providers.dart';

import 'random_generator.dart';

class Job {
  const Job(this.random, this.dataProvider);

  final RandomGenerator random;

  final JobDataProvider dataProvider;

  /// Generates a job title.
  ///
  /// Example:
  /// ```dart
  ///   faker.job.title();
  /// ```
  String title() =>
      '${random.element(dataProvider.prefixes())} ${random.element(dataProvider.adjectives())} '
      '${random.element(dataProvider.nouns())}';
}

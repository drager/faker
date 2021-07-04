import 'package:faker/src/providers/base_providers.dart';

import 'random_generator.dart';

class Job {
  const Job(this.random, this.provider);
  final JobDataProvider provider;
  final RandomGenerator random;

  /// Generates a job title.
  ///
  /// Example:
  /// ```dart
  ///   faker.job.title();
  /// ```
  String title() => random.element(provider.jobTitles());
}

import 'data/job/job_adj.dart';
import 'data/job/job_noun.dart';
import 'data/job/job_prefix.dart';
import 'random_generator.dart';

class Job {
  const Job(this.random);

  final RandomGenerator random;

  /// Generates a job title.
  ///
  /// Example:
  /// ```dart
  ///   faker.job.title();
  /// ```
  String title() => '${random.element(jobPrefix)} ${random.element(jobAdj)} '
      '${random.element(jobNoun)}';
}

import 'data/job/job_adj.dart';
import 'data/job/job_noun.dart';
import 'data/job/job_prefix.dart';
import 'random_generator.dart';

class Job {
  const Job(this._random);

  final RandomGenerator _random;

  /// Generates a job title.
  ///
  /// Example:
  /// ```dart
  ///   faker.job.title();
  /// ```
  String title() => '${_random.element(jobPrefix)} ${_random.element(jobAdj)} '
      '${_random.element(jobNoun)}';
}

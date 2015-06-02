part of faker;

class Job {

  const Job();

  /// Generates a job title.
  ///
  /// Example:
  /// ```dart
  ///   faker.job.title();
  /// ```
  String title() => '${random.element(jobPrefix)} ${random.element(jobAdj)} '
      '${random.element(jobNoun)}';
}

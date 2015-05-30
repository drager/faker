part of faker;

class Job {

  /// Generates a job title.
  ///
  /// Example:
  /// ```dart
  ///   faker.job.title();
  /// ```
  String title() => '${randomElement(jobPrefix)} ${randomElement(jobAdj)} '
      '${randomElement(jobNoun)}';
}

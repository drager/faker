part of faker;

class Conference {
  const Conference();

  /// Generates a conference name.
  ///
  /// Example:
  /// ```dart
  ///   faker.conference.name();
  /// ```
  String name() => random.element(conferenceNames);
}

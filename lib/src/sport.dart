part of faker;

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

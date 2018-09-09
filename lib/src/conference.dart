import 'random_generator.dart';
import 'data/conference/conference_names.dart';

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

import 'data/conference/conference_names.dart';
import 'random_generator.dart';

class Conference {
  const Conference(this.random);

  final RandomGenerator random;

  /// Generates a conference name.
  ///
  /// Example:
  /// ```dart
  ///   faker.conference.name();
  /// ```
  String name() => random.element(conferenceNames);
}

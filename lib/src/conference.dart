import 'data/conference/conference_names.dart';
import 'random_generator.dart';

class Conference {
  const Conference(this._random);

  final RandomGenerator _random;

  /// Generates a conference name.
  ///
  /// Example:
  /// ```dart
  ///   faker.conference.name();
  /// ```
  String name() => _random.element(conferenceNames);
}

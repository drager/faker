import 'package:faker/faker.dart';

class Conference {
  const Conference(this.random, this.dataProvider);

  final RandomGenerator random;

  final ConferenceDataProvider dataProvider;

  /// Generates a conference name.
  ///
  /// Example:
  /// ```dart
  ///   faker.conference.name();
  /// ```
  String name() => random.element(dataProvider.conferences());
}

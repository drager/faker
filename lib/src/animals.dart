import 'data/animals/animals_names.dart';
import 'random_generator.dart';

class Animal {
  const Animal(this.random);

  final RandomGenerator random;

  /// Generates an animal name.
  ///
  /// Example:
  /// ```dart
  ///   faker.animal.name();
  /// ```
  String name() => random.element(animalsNames);
}

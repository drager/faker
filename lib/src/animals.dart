import 'package:faker/src/providers/base_providers.dart';
import 'random_generator.dart';

class Animal {
  const Animal(this.random, this._provider);

  final RandomGenerator random;
  final AnimalsDataProvider _provider;

  /// Generates an animal name.
  ///
  /// Example:
  /// ```dart
  ///   faker.animal.name();
  /// ```
  String name() => random.element(_provider.animalsList());
}

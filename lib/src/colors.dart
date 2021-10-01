import 'data/colors/colors.dart';
import 'random_generator.dart';

class Color {
  const Color(this.random);

  final RandomGenerator random;

  /// Generates a color name.
  ///
  /// Example:
  /// ```dart
  ///   faker.colors.color();
  /// ```
  String color() => random.element(allColors);

  /// Generates a color name from a smaller list of colors.
  ///
  /// Example:
  /// ```dart
  ///   faker.colors.commonColor();
  /// ```
  String commonColor() => random.element(commonColors);
}

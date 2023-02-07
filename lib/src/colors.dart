import 'data/colors/colors.dart';
import 'random_generator.dart';

class Color {
  const Color(this._random);

  final RandomGenerator _random;

  /// Generates a color name.
  ///
  /// Example:
  /// ```dart
  ///   faker.colors.color();
  /// ```
  String color() => _random.element(allColors);

  /// Generates a color name from a smaller list of colors.
  ///
  /// Example:
  /// ```dart
  ///   faker.colors.commonColor();
  /// ```
  String commonColor() => _random.element(commonColors);
}

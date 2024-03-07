import 'data/colors/colors.dart';
import 'random_generator.dart';

enum Casing {
  lower,
  upper,
}

enum Format {
  hex,
  css,
}

class Color {
  static const _hexChars = '0123456789abcdef';

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

  /// Generates a [String] rgb color.
  ///
  /// Example
  /// ```dart
  /// faker.colors.rgbColor();
  /// faker.colors.rgbColor(prefix: '0x');
  /// faker.colors.rgbColor(casing: Casing.upper);
  /// faker.colors.rgbColor(casing: Casing.lower);
  /// faker.colors.rgbColor(prefix: '#', casing: Casing.lower);
  /// faker.colors.rgbColor(format: Format.hex, casing: Casing.lower');
  /// faker.colors.rgbColor(format: Format.css);
  /// faker.colors.rgbColor(includeAlpha: true);
  /// faker.colors.rgbColor(format: Format.css, includeAlpha: true);
  /// ```
  String rgbColor({
    final String prefix = '#',
    final Casing casing = Casing.lower,
    final Format format = Format.hex,
    final bool includeAlpha = false,
  }) {
    if (format == Format.hex) {
      var length = includeAlpha ? 8 : 6;
      String color = '';
      while (length-- > 0) {
        color += _hexChars[(random.integer(16)) | 0];
      }

      return _formatHexColor(color, prefix: prefix, casing: casing);
    }

    var color = List.generate(3, (_) => random.integer(255));
    if (includeAlpha) {
      return 'rgba(${color[0]}, ${color[1]}, ${color[2]}, ${random.decimal()})';
    }

    return 'rgb(${color[0]}, ${color[1]}, ${color[2]})';
  }

  String _formatHexColor(
    String hexColor, {
    required Casing casing,
    String? prefix,
  }) {
    switch (casing) {
      case Casing.upper:
        {
          hexColor = hexColor.toUpperCase();
          break;
        }
      case Casing.lower:
        {
          hexColor = hexColor.toLowerCase();
          break;
        }
      default:
        break;
    }

    if (prefix != null) {
      hexColor = prefix + hexColor;
    }

    return hexColor;
  }
}

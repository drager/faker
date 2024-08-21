import 'dart:math';

enum ImageFormat { jpg, webp }

class Image {
  const Image();

  /// Generates a url to a random image. The size of image is determined
  /// by `width` and `height` parameters. You can choose the image categories related
  /// by the `keywords` parameter separeted by comma . By supplying the `random` parameter
  /// you can ensure a different image is returned with the same parameters.
  ///
  /// Example:
  /// ```dart
  ///   faker.image.image(width: 1200, height: 900, keywords: ['people', 'nature'], random: true);
  /// ```
  @Deprecated('Use loremPicsum instead for more control')
  String image({
    int width = 640,
    int height = 480,
    List<String> keywords = const [],
    bool random = false,
  }) {
    return _imageUrl(
      width,
      height,
      random: random ? Random().nextInt(100) : null,
    ).toString();
  }

  /// Generates a url to a random image from Lorem Picsum. The size of image is determined
  /// by `width` and `height` parameters. By supplying the `random` parameter
  /// you can ensure a different image is returned with the same parameters.
  /// You can also supply a `seed` parameter to get the same image every time.
  /// You can also specify the image format by supplying the `imageFormat` parameter.
  ///
  /// See https://picsum.photos for more details.
  String loremPicsum({
    int width = 640,
    int height = 480,
    int? random,
    String? seed,
    ImageFormat? imageFormat,
  }) {
    return _imageUrl(
      width,
      height,
      random: random,
      seed: seed,
      imageFormat: imageFormat,
    ).toString();
  }

  /// Build a url to a image random image from Lorem Picsum.
  ///
  /// Example:
  /// ```dart
  ///   this._imageUrl(1600, 1200);
  /// ```
  Uri _imageUrl(
    int width,
    int height, {
    int? random,
    String? seed,
    ImageFormat? imageFormat,
  }) {
    final formatExt = imageFormat != null ? '.${imageFormat.name}' : '';
    return Uri(
      scheme: 'https',
      host: 'picsum.photos',
      pathSegments: [
        if (seed != null) ...['seed', seed],
        '$width',
        '$height$formatExt',
      ],
      queryParameters: random != null ? {'random': '$random'} : null,
    );
  }
}

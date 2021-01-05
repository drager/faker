import 'dart:math';

class Image {
  const Image();

  /// Generates a url to a image random image. The size of image is determined
  /// by `width` and `height` parameters. You can choose the image categories related
  /// by the `keywords` parameter separeted by comma . By supplying the `random` parameter
  /// you can ensure a different image is returned with the same parameters. 
  ///
  /// Example:
  /// ```dart
  ///   faker.image.image(width: 1200, height: 900, keywords: ['people', 'nature'], random: true);
  /// ```
  String image(
      {int width = 640, int height = 480, List<String> keywords = const [], bool random = false}) {
    return _imageUrl(width, height, keywords, random);
  }

  /// Build a url to a image random image from unsplash
  ///
  /// Example:
  /// ```dart
  ///   this._imageUrl(1600, 1200,  ['people']);
  /// ```
  String _imageUrl(int width, int height, List<String> keywords, [bool random = false]) {
    var url = 'https://source.unsplash.com';

    url += '/${width}x${height}';

    if (keywords.isNotEmpty) {
      var keywordFormat =
          RegExp(r'^([A-Za-z0-9].+,[A-Za-z0-9]+)$|^([A-Za-z0-9]+)$');
      if (keywords.any(keywordFormat.hasMatch)) {
        url += '?' + keywords.join(',');
        if(random){
          url = url += '&random=${Random().nextInt(100) + 1}';
        }
      }
    }else{
      if(random){
        url = url += '?random=${Random().nextInt(100) + 1}';
      }
    }
    return url;
  }
}

class Image {
  const Image();

  /// Generates a url to a image random image. The size of image is determined
  /// by `width` and `height` parameters. You can choose the image categories related
  /// by the `keywords` parameter separeted by comma .
  /// 
  /// Example:
  /// ```dart
  ///   faker.image.image(width: 1200, height: 900, keywords: ['people', 'nature']);
  /// ```
  String image({int width = 640, int height = 480, List<String> keywords = const []}) {
    return _imageUrl(width, height, keywords);
  }

  /// Build a url to a image random image from unsplash
  ///
  /// Example:
  /// ```dart
  ///   this._imageUrl(1600, 1200, 'nature');
  /// ```
  String _imageUrl(int width, int height, List<String> keywords) {
    var url = 'https://source.unsplash.com';
    
    url += '/${width}x${height}';

    if (keywords.isNotEmpty) {
      var keywordFormat =
          new RegExp(r'^([A-Za-z0-9].+,[A-Za-z0-9]+)$|^([A-Za-z0-9]+)$');          
      if (keywords.any(keywordFormat.hasMatch)) {
        url += '?' + keywords.join(',');
      }
    }

    return url;
  }
}
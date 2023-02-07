import 'package:faker/src/providers/base_providers.dart';
import 'random_generator.dart';

class Lorem {
  const Lorem(this._random, this._provider);

  final RandomGenerator _random;
  final LoremDataProvider _provider;

  /// Generates a word.
  ///
  /// Example:
  /// ```dart
  ///   faker.lorem.word();
  /// ```
  String word() => _random.element(_provider.wordsList());

  /// Generates a list of random words. The number of words is determined
  /// by the `numberOfWords` parameter.
  ///
  /// Example:
  /// ```dart
  ///   faker.lorem.words(3);
  /// ```
  List<String> words(numberOfWords) {
    return Iterable<int>.generate(numberOfWords).map((_) => word()).toList();
  }

  /// Generates a random sentence.
  ///
  /// Example:
  /// ```dart
  ///   faker.lorem.sentence();
  /// ```
  String sentence() => _random.element(_provider.sentencesList());

  /// Generates a list of random sentences. The size of the list of determined
  /// by the `numberOfSentences` parameter.
  ///
  /// Example:
  /// ```dart
  ///   faker.lorem.sentences(5);
  /// ```
  List<String> sentences(numberOfSentences) {
    return Iterable<int>.generate(numberOfSentences)
        .map((_) => sentence())
        .toList();
  }
}

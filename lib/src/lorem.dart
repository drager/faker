import 'data/lorem/words.dart' as word_list;
import 'data/lorem/sentences.dart' as sentence_list;
import 'random_generator.dart';

class Lorem {
  const Lorem();

  /// Generates a word.
  ///
  /// Example:
  /// ```dart
  ///   faker.lorem.word();
  /// ```
  String word() => random.element(word_list.words);

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
  String sentence() => random.element(sentence_list.sentences);

  /// Generates a list of random sentences. The size of the list of determined
  /// by the `numberOfSentences` parameter.
  ///
  /// Example:
  /// ```dart
  ///   faker.lorem.sentences(5);
  /// ```
  List<String> sentences(numberOfSentences) {
    return Iterable<int>.generate(numberOfSentences).map((_) => word()).toList();
  }
}

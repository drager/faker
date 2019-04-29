import 'data/lorem/words.dart' as word_list;
import 'data/lorem/sentences.dart' as sentence_list;
import 'random_generator.dart';

class Lorem {
  const Lorem();

  String word() => random.element(word_list.words);

  List<String> words(numberOfWords) {
    return Iterable<int>.generate(numberOfWords).map((_) => word()).toList();
  }

  String sentence() => random.element(sentence_list.sentences);

  List<String> sentences(numberOfSentences) {
    return Iterable<int>.generate(numberOfSentences).map((_) => word()).toList();
  }
}

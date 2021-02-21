import 'base_providers.dart';
import '../data/lorem/fa/sentences_fa.dart' as sentence_list;
import '../data/lorem/fa/words_fa.dart' as word_list;

class LoremDataProviderFa extends LoremDataProvider {
  @override
  List<String> sentencesList() => sentence_list.sentences;

  @override
  List<String> wordsList() => word_list.words;
}

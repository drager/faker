import '../data/lorem/fa/sentences_fa.dart' as sentence_list;
import '../data/lorem/fa/words_fa.dart' as word_list;
import '../data/person/fa/firstnames.dart' as first_names_list;
import '../data/person/fa/lastnames.dart' as last_names_list;
import 'base_providers.dart';

class LoremDataProviderFa extends LoremDataProvider {
  @override
  List<String> sentencesList() => sentence_list.sentences;

  @override
  List<String> wordsList() => word_list.words;
}

class PersonDataProviderFa extends PersonDataProvider {
  @override
  List<String> firstNames() => first_names_list.firstnames;

  @override
  List<String> lastNames() => last_names_list.lastnames;

  @override
  List<String> prefixes() => ['آقای', 'خانم', 'سرکار', 'دکتر', 'مهندس', 'خلبان', 'جناب'];

  @override
  List<String> suffixes() => ['']; //no suffixes in farsi
}

import 'package:faker/src/data/conference/fa/conference_names_fa.dart';

import '../data/lorem/fa/sentences_fa.dart' as sentence_list;
import '../data/lorem/fa/words_fa.dart' as word_list;
import '../data/person/fa/firstnames.dart' as first_names_list;
import '../data/person/fa/lastnames.dart' as last_names_list;
import 'base_providers.dart';

class LoremDataProviderFa extends LoremDataProvider {
  @override
  List<String> sentencesList() => sentence_list.sentencesFa;

  @override
  List<String> wordsList() => word_list.wordsFa;
}

class PersonDataProviderFa extends PersonDataProvider {
  @override
  List<String> firstNames() => first_names_list.firstnamesFa;

  @override
  List<String> lastNames() => last_names_list.lastnamesFa;

  @override
  List<String> prefixes() =>
      ['آقای', 'خانم', 'سرکار', 'دکتر', 'مهندس', 'خلبان', 'جناب'];

  @override
  List<String> suffixes() => ['']; //no suffixes in farsi
}

class ConferenceDataProviderFa extends ConferenceDataProvider {
  @override
  List<String> conferences() => conferenceNamesFa;
}

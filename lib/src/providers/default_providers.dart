import 'base_providers.dart';
import '../data/animals/defaults/animals_names.dart' as animal_list;
import '../data/lorem/defaults/sentences.dart' as sentence_list;
import '../data/lorem/defaults/words.dart' as word_list;

class DefaultAnimalsDataProvider extends AnimalsDataProvider {
  @override
  List<String> animalsList() => animal_list.animalsNames;
}

class DefaultLoremDataProvider extends LoremDataProvider {
  @override
  List<String> sentencesList() => sentence_list.sentences;

  @override
  List<String> wordsList() => word_list.words;
}

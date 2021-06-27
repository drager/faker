import 'package:faker/faker.dart';
import 'package:faker/src/data/conference/default/conference_names.dart';

import 'base_providers.dart';
import '../data/lorem/defaults/sentences.dart' as sentence_list;
import '../data/lorem/defaults/words.dart' as word_list;

import '../data/person/defaults/firstnames.dart' as first_names_list;
import '../data/person/defaults/lastnames.dart' as last_names_list;

import 'package:faker/src/data/food/default/cuisines.dart' as cuisinesList;
import 'package:faker/src/data/food/default/dishes.dart' as dishesList;
import 'package:faker/src/data/food/default/restaurants.dart'
    as restaurantsList;

class DefaultLoremDataProvider extends LoremDataProvider {
  @override
  List<String> sentencesList() => sentence_list.sentences;

  @override
  List<String> wordsList() => word_list.words;
}

class DefaultPersonDataProvider extends PersonDataProvider {
  @override
  List<String> firstNames() => first_names_list.firstnames;

  @override
  List<String> lastNames() => last_names_list.lastnames;

  @override
  List<String> prefixes() => ['Mr.', 'Mrs.', 'Ms.', 'Miss', 'Dr'];

  @override
  List<String> suffixes() =>
      ['Jr.', 'Sr.', 'I', 'II', 'III', 'IV', 'V', 'MD', 'DDS', 'PhD', 'DVM'];
}

class DefaultConferenceDataProvider extends ConferenceDataProvider {
  @override
  List<String> conferences() => conferenceNames;
}

class DefaultFoodDataProvider extends FoodDataProvider {
  @override
  List<String> cuisines() => cuisinesList.cuisines;

  @override
  List<String> dishes() => dishesList.dishes;

  @override
  List<String> restaurants() => restaurantsList.restaurants;
}

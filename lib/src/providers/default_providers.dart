import 'package:faker/src/data/conference/conference_names.dart';

import '../data/currency/defaults/currency_codes.dart' as currency_code_list;
import '../data/currency/defaults/currency_names.dart' as currency_name_list;
import '../data/food/defaults/cuisines.dart' as food_cuisine_list;
import '../data/food/defaults/dishes.dart' as food_dish_list;
import '../data/food/defaults/restaurants.dart' as food_restaurant_list;
import '../data/job/defaults/job_adj.dart' as job_adj_list;
import '../data/job/defaults/job_noun.dart' as job_noun_list;
import '../data/job/defaults/job_prefix.dart' as job_prefix_list;
import '../data/lorem/defaults/sentences.dart' as sentence_list;
import '../data/lorem/defaults/words.dart' as word_list;
import '../data/person/defaults/firstnames.dart' as first_name_list;
import '../data/person/defaults/lastnames.dart' as last_name_list;
import '../data/sport/defaults/sport_names.dart' as sports_name_list;
import '../data/vehicles/vehicles.dart' as vehicle_list;
import 'base_providers.dart';

class DefaultLoremDataProvider extends LoremDataProvider {
  @override
  List<String> sentencesList() => sentence_list.sentences;

  @override
  List<String> wordsList() => word_list.words;
}

class DefaultPersonDataProvider extends PersonDataProvider {
  @override
  List<String> firstNames() => first_name_list.firstnames;

  @override
  List<String> lastNames() => last_name_list.lastnames;

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

class DefaultCurrencyDataProvider extends CurrencyDataProvider {
  @override
  List<String> currencyCodes() => currency_code_list.currencyCodes;

  @override
  List<String> currencyNames() => currency_name_list.currencyNames;
}

class DefaultFoodDataProvider extends FoodDataProvider {
  @override
  List<String> cuisines() => food_cuisine_list.cuisines;

  @override
  List<String> dishes() => food_dish_list.dishes;

  @override
  List<String> restaurants() => food_restaurant_list.restaurants;
}

class DefaultSportsDataProvider extends SportsDataProvider {
  @override
  List<String> sportNames() => sports_name_list.sportNames;
}

class DefaultJobDataProvider extends JobDataProvider {
  @override
  List<String> adjectives() => job_adj_list.jobAdj;

  @override
  List<String> nouns() => job_noun_list.jobNoun;

  @override
  List<String> prefixes() => job_prefix_list.jobPrefix;
}

class DefaultVehicleDataProvider extends VehicleDataProvider {
  final _vehicleNames = vehicle_list.vehicles.map((e) => e.model).toList();

  @override
  List<String> vehicleNames() => _vehicleNames;
}

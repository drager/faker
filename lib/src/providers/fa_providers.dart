import 'package:faker/faker.dart';
import 'package:faker/src/data/conference/fa/conference_names_fa.dart';
import 'package:faker/src/data/currency/fa/currency_names_fa.dart';
import 'package:faker/src/data/food/fa/cuisines_fa.dart';
import 'package:faker/src/data/food/fa/dishes_fa.dart';
import 'package:faker/src/data/food/fa/restaurants_fa.dart';
import 'package:faker/src/data/job/fa/job_titles_fa.dart';
import 'package:faker/src/data/sport/fa/sport_names_fa.dart';

import '../data/lorem/fa/sentences_fa.dart' as sentence_list;
import '../data/lorem/fa/words_fa.dart' as word_list;
import '../data/person/fa/firstnames.dart' as first_names_list;
import '../data/person/fa/lastnames.dart' as last_names_list;
import 'package:faker/src/data/currency/currency_codes.dart'
    as currencyCodesList;
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

class FoodDataProviderFa extends FoodDataProvider {
  @override
  List<String> cuisines() => cuisinesFa;

  @override
  List<String> dishes() => dishesFa;

  @override
  List<String> restaurants() => restaurantsFa;
}

class CurrencyProviderFa extends CurrencyDataProvider {
  @override
  List<String> currencyCodes() => currencyCodesList.currencyCodes;

  @override
  List<String> currencyNames() => currencyNamesFa;
}

class SportNamesProviderFa extends SportNamesProvider {
  @override
  List<String> sportNames() => sportNamesListFa;
}

class JobDataProviderFa extends JobDataProvider {
  @override
  List<String> jobTitles() => jobTitlesFaList;
}

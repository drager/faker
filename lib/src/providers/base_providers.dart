abstract class LoremDataProvider {
  /// Provides a list of lorem ipsum words that can be used to create fake data
  List<String> wordsList();

  /// Provides a list of lorem ipsum sentences that can be used to create fake data
  List<String> sentencesList();
}

abstract class PersonDataProvider {
  /// Provides a list of first name that can be used to create fake data
  List<String> firstNames();

  /// Provides a list of last name that can be used to create fake data
  List<String> lastNames();

  /// Provides a list of name prefix that can be used to create fake data
  List<String> prefixes();

  /// Provides a list of name suffix that can be used to create fake data
  List<String> suffixes();
}

abstract class ConferenceDataProvider {
  /// Provides a list of conference name that can be used to create fake data
  List<String> conferences();
}

abstract class CurrencyDataProvider {
  /// Provides a list of currency code that can be used to create fake data
  List<String> currencyCodes();

  /// Provides a list of currency name that can be used to create fake data
  List<String> currencyNames();
}

abstract class FoodDataProvider {
  /// Provides a list of restrant that can be used to create fake data
  List<String> restaurants();

  /// Provides a list of dish that can be used to create fake data
  List<String> dishes();

  /// Provides a list of cuisine that can be used to create fake data
  List<String> cuisines();
}

abstract class SportsDataProvider {
  /// Provides a list of sport that can be used to create fake data
  List<String> sportNames();
}

abstract class JobDataProvider {
  /// Provides a list of job prefix that can be used to create fake data
  List<String> prefixes();

  /// Provides a list of job adj that can be used to create fake data
  List<String> adjectives();

  /// Provides a list of job noun that can be used to create fake data
  List<String> nouns();
}

abstract class VehicleDataProvider {
  /// Provides a list of vehicle that can be used to create fake data
  List<String> vehicleNames();
}

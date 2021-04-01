import 'data/address/city_suffixes.dart';
import 'data/address/continents.dart';
import 'data/address/countries.dart';
import 'data/address/country_codes.dart';
import 'data/address/neighborhoods.dart';
import 'data/address/states.dart';
import 'data/address/street_suffixes.dart';
import 'person.dart';
import 'random_generator.dart';

class Address {
  static const compassDirections = ['North', 'East', 'West', 'South'];
  static const cityPrefixes = ['New', 'Lake', 'Port'];

  const Address(this.person);

  final Person person;

  RandomGenerator get random => person.random;

  /// Generates a zip code.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.zipCode();
  /// ```
  String zipCode() => random.fromPattern(['#####', '#####-####']);

  /// Generates a city.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.city();
  /// ```
  String city() {
    switch (random.integer(4)) {
      case 0:
        return '${cityPrefix()} ${person.firstName()}${citySuffix()}';
      case 1:
        return '${cityPrefix()} ${person.firstName()}';
      case 2:
        return '${person.firstName()}${citySuffix()}';
      case 3:
        return '${person.lastName()}${citySuffix()}';
      default:
        return '${person.lastName()}${citySuffix()}';
    }
  }

  /// Generates a city prefix.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.cityPrefix();
  /// ```
  String cityPrefix() => [
        random.element(compassDirections),
        random.element(cityPrefixes)
      ].join(' ');

  /// Generates a city suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.citySuffix();
  /// ```
  String citySuffix() => random.element(citySuffixes);

  /// Generates a street name.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.streetName();
  /// ```
  String streetName() => random.integer(2) == 0
      ? '${person.lastName()} ${streetSuffix()}'
      : '${person.firstName()} ${streetSuffix()}';

  /// Generates a street address.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.streetAddress();
  /// ```
  String streetAddress() => '${buildingNumber()} ${streetName()}';

  /// Generates a street suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.streetSuffix();
  /// ```
  String streetSuffix() => random.element(streetSuffixes);

  /// Generates a building number.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.buildingNumber();
  /// ```
  String buildingNumber() => random.integer(999999).toString();

  /// Generates a neighborhood.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.neighborhood();
  /// ```
  String neighborhood() => random.element(neighborhoods);

  /// Generates a US state.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.state();
  /// ```
  String state() => random.mapElementValue(states);

  /// Generates a US state abbreviation.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.stateAbbreviation();
  /// ```
  String stateAbbreviation() => random.mapElementKey(states);

  /// Generates a Map containing a US state and it's abbreviation.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.stateAsMap();
  /// ```
  Map<String, String> stateAsMap() {
    String key = random.mapElementKey(states);
    String value = states[key]!;
    return {'state': key, 'abbreviation': value};
  }

  /// Generates a country.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.country();
  /// ```
  String country() => random.element(countries);

  /// Generates a country code.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.countryCode();
  /// ```
  String countryCode() => random.element(countryCodes);

  /// Generates a continent.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.continent();
  /// ```
  String continent() => random.element(continents);
}

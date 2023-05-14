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

  const Address(this._person, this._random);

  final Person _person;
  final RandomGenerator _random;

  /// Generates a zip code.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.zipCode();
  /// ```
  String zipCode() => _random.fromPattern(['#####', '#####-####']);

  /// Generates a city.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.city();
  /// ```
  String city() {
    switch (_random.integer(4)) {
      case 0:
        return '${cityPrefix()} ${_person.firstName()}${citySuffix()}';
      case 1:
        return '${cityPrefix()} ${_person.firstName()}';
      case 2:
        return '${_person.firstName()}${citySuffix()}';
      case 3:
        return '${_person.lastName()}${citySuffix()}';
      default:
        return '${_person.lastName()}${citySuffix()}';
    }
  }

  /// Generates a city prefix.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.cityPrefix();
  /// ```
  String cityPrefix() => [
        _random.element(compassDirections),
        _random.element(cityPrefixes)
      ].join(' ');

  /// Generates a city suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.citySuffix();
  /// ```
  String citySuffix() => _random.element(citySuffixes);

  /// Generates a street name.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.streetName();
  /// ```
  String streetName() => _random.integer(2) == 0
      ? '${_person.lastName()} ${streetSuffix()}'
      : '${_person.firstName()} ${streetSuffix()}';

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
  String streetSuffix() => _random.element(streetSuffixes);

  /// Generates a building number.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.buildingNumber();
  /// ```
  String buildingNumber() => _random.integer(999999).toString();

  /// Generates a neighborhood.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.neighborhood();
  /// ```
  String neighborhood() => _random.element(neighborhoods);

  /// Generates a US state.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.state();
  /// ```
  String state() => _random.mapElementValue(states);

  /// Generates a US state abbreviation.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.stateAbbreviation();
  /// ```
  String stateAbbreviation() => _random.mapElementKey(states);

  /// Generates a Map containing a US state and it's abbreviation.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.stateAsMap();
  /// ```
  Map<String, String> stateAsMap() {
    String key = _random.mapElementKey(states);
    String value = states[key]!;
    return {'state': key, 'abbreviation': value};
  }

  /// Generates a country.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.country();
  /// ```
  String country() => _random.element(countries);

  /// Generates a country code.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.countryCode();
  /// ```
  String countryCode() => _random.element(countryCodes);

  /// Generates a continent.
  ///
  /// Example:
  /// ```dart
  ///   faker.address.continent();
  /// ```
  String continent() => _random.element(continents);
}

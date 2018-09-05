import 'random_generator.dart';
import 'faker.dart';
import 'data/address/street_suffixes.dart';
import 'data/address/city_suffixes.dart';
import 'data/address/neighborhoods.dart';
import 'data/address/countries.dart';
import 'data/address/country_codes.dart';

class Address {
  static const compassDirections = const ['North', 'East', 'West', 'South'];
  static const cityPrefixes = const ['New', 'Lake', 'Port'];

  const Address();

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
        return '${cityPrefix()} ${faker.person.firstName()}${citySuffix()}';
      case 1:
        return '${cityPrefix()} ${faker.person.firstName()}';
      case 2:
        return '${faker.person.firstName()}${citySuffix()}';
      case 3:
        return '${faker.person.lastName()}${citySuffix()}';
      default:
        return '${faker.person.lastName()}${citySuffix()}';
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
      ? '${new Faker().person.lastName()} ${streetSuffix()}'
      : '${new Faker().person.firstName()} ${streetSuffix()}';

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
}

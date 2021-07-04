import 'package:faker/src/providers/base_providers.dart';

import 'data/vehicles/default/vin_manufacturers.dart';
import 'data/vehicles/default/models/vehicle.dart';
import 'data/vehicles/default/vehicles.dart';
import 'data/vehicles/default/vin_years.dart';
import 'random_generator.dart';

class Vehicle {
  const Vehicle(this.random, this.provider);
  final RandomGenerator random;
  final VehicleDataProvider provider;

  final _vinChars = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";

  /// Generates a random vehicle name
  ///
  /// Example:
  /// ```dart
  ///   faker.vehicle.name;
  /// ```
  String get name => random.element(provider.names());

  /// Generates a random vehicle as a VehicleYMM object.
  ///
  /// Example:
  /// ```dart
  ///   faker.vehicle.asVehicle();
  /// ```
  VehicleYMM asVehicle() => random.element(vehicles);

  /// Generates a random vehicle make.
  ///
  /// Example:
  /// ```dart
  ///   faker.vehicle.make();
  /// ```
  String make() => random.element(vehicles).make;

  /// Generates a random vehicle model.
  ///
  /// Example:
  /// ```dart
  ///   faker.vehicle.model();
  /// ```
  String model() => random.element(vehicles).model;

  /// Generates a random vehicle year between 1940 and DateTime.now().year + 1.
  ///
  /// Example:
  /// ```dart
  ///   faker.vehicle.year();
  /// ```
  String year() => random.element(vehicles).year.toString();

  /// Generates a random vehicle's year, make, and model.
  ///
  /// Example:
  /// ```dart
  ///   faker.vehicle.yearMakeModel();
  /// ```
  String yearMakeModel() {
    VehicleYMM vehicle = random.element(vehicles);
    return '${vehicle.year.toString()} ${vehicle.make} ${vehicle.model}';
  }

  /// Generates a random vehicle's year, make and model as a map with keys and values.
  ///
  /// Example:
  /// ```dart
  ///   faker.vehicle.vehicle();
  /// ```
  Map<String, dynamic> vehicle() => random.element(vehicles).toMap();

  /// Generates a random (non-valid) vehicle VIN.
  ///
  /// Example:
  /// ```dart
  ///   faker.vehicle.vin();
  /// ```
  String vin() {
    return _generateWmi() + _generateVds() + _generateVis();
  }

  /// Private methods used to generate a VIN in the proper format
  String _generateWmi() {
    var wmi = random.element(manufacturers);

    if (wmi.length == 2) {
      wmi += '9';
    }

    return wmi;
  }

  String _generateVds() {
    var randomVds = random.fromCharSet(_vinChars, 5);

    randomVds += random.integer(10).toString();

    return randomVds;
  }

  String _generateVis() {
    return random.mapElementKey(yearMap) +
        'A' +
        random.fromCharSet(_vinChars, 6);
  }
}

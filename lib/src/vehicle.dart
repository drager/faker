import 'data/vehicles/models/vehicle.dart';
import 'data/vehicles/vehicles.dart';
import 'random_generator.dart';

class Vehicle {
  const Vehicle();

  /// Generates a Vehicle with a make, model, and year.
  ///
  /// Example:
  /// ```dart
  ///   faker.vehicle.vehicle();
  /// ```
  VehicleYMM asVehicle() => random.element(vehicles);
  String make() => random.element(vehicles).make;
  String model() => random.element(vehicles).model;
  String year() => random.element(vehicles).year.toString();
  String yearMakeModel(){
    VehicleYMM vehicle = random.element(vehicles);
    return '${vehicle.year.toString()} ${vehicle.make} ${vehicle.model}';
  }
  Map<String, dynamic> vehicle() => random.element(vehicles).toMap();
}

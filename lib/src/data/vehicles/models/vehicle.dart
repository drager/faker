import 'package:faker/src/data/vehicles/vehicles.dart';

class VehicleYMM {
  final String make;
  final String model;
  final int year = randomGenerator.integer(2020, min: 1940);

  VehicleYMM({required this.make, required this.model});

  Map<String, dynamic> toMap() {
    return {'Make': make, 'Model': model, 'Year': year};
  }
}
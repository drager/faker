import 'package:faker/src/data/colors/colors.dart';
import 'package:faker/src/data/vehicles/vehicles.dart';

class VehicleYMM {
  final String color = randomGenerator.element(commonColors);
  final String make;
  final String model;
  final int year = randomGenerator.integer(DateTime.now().year + 1, min: 1940);

  VehicleYMM({required this.make, required this.model});

  Map<String, dynamic> toMap() {
    return {'Color': color, 'Make': make, 'Model': model, 'Year': year};
  }
}

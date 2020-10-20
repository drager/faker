import 'package:faker/src/data/vehicles/models/vehicle.dart';
import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {

  group('vehicle', () {
    test('should be able to generate a vehicle as map', () {
      Map<String, dynamic> vehicle = faker.vehicle.vehicle();
      expect(vehicle['Year'].toString().isNotEmpty, true);
      expect(vehicle['Make'].isNotEmpty, true);
      expect(vehicle['Model'].isNotEmpty, true);
    });

    test('should be able to generete year, make, model independently and as one', () {
      expect(faker.vehicle.year().isNotEmpty, true);
      expect(faker.vehicle.make().isNotEmpty, true);
      expect(faker.vehicle.model().isNotEmpty, true);
      expect(faker.vehicle.yearMakeModel().isNotEmpty, true);
    });

    test('should be able to generate a vehicle as a VehicleYMM object', () {
      VehicleYMM vehicle = faker.vehicle.asVehicle();
      expect(vehicle.year.toString().isNotEmpty, true);
      expect(vehicle.make.isNotEmpty, true);
      expect(vehicle.model.isNotEmpty, true);
    });
  });
}

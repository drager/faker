import 'base_providers.dart';
import '../data/animals/kr/animals_names.dart' as animals;

class AnimalsDataProviderKr extends AnimalsDataProvider {
  @override
  List<String> animalsList() => animals.animalNames;
}

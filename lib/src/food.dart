import 'data/food/cuisines.dart';
import 'data/food/dishes.dart';
import 'data/food/restaurants.dart';
import 'random_generator.dart';

class Food {
  const Food(this._random);

  final RandomGenerator _random;

  /// Generates a restaurant.
  ///
  /// Example:
  /// ```dart
  ///   faker.food.restaurant();
  /// ```
  String restaurant() => _random.element(restaurants);

  /// Generates a dish.
  ///
  /// Example:
  /// ```dart
  ///   faker.food.dish();
  /// ```
  String dish() => _random.element(dishes);

  /// Generates a cuisine.
  ///
  /// Example:
  /// ```dart
  ///   faker.food.cuisine();
  /// ```
  String cuisine() => _random.element(cuisines);
}

import 'package:faker/src/providers/base_providers.dart';

import 'random_generator.dart';

class Food {
  const Food(this.random, this.dataProvider);

  final RandomGenerator random;

  final FoodDataProvider dataProvider;

  /// Generates a restaurant.
  ///
  /// Example:
  /// ```dart
  ///   faker.food.restaurant();
  /// ```
  String restaurant() => random.element(dataProvider.restaurants());

  /// Generates a dish.
  ///
  /// Example:
  /// ```dart
  ///   faker.food.dish();
  /// ```
  String dish() => random.element(dataProvider.dishes());

  /// Generates a cuisine.
  ///
  /// Example:
  /// ```dart
  ///   faker.food.cuisine();
  /// ```
  String cuisine() => random.element(dataProvider.cuisines());
}

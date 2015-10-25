part of faker;

class Food {
  const Food();

  /// Generates a restaurant.
  ///
  /// Example:
  /// ```dart
  ///   faker.food.restaurant();
  /// ```
  String restaurant() => random.element(restaurants);

  /// Generates a dish.
  ///
  /// Example:
  /// ```dart
  ///   faker.food.dish();
  /// ```
  String dish() => random.element(dishes);

  /// Generates a cuisine.
  ///
  /// Example:
  /// ```dart
  ///   faker.food.cuisine();
  /// ```
  String cuisine() => random.element(cuisines);
}

import 'dart:math';

var _rng = new Random();

/// Plucks a random element from the given [list].
String randomElement(List list) {
  return list[_rng.nextInt(list.length)];
}

/// Generates a random number from the [max] value
/// and by the number of [times].
///
/// Returns a list of numbers.
List<int> randomNumber(num max, num times) {
  var number = [];

  for (var i = 0; i < times; i++) {
    number.add(_rng.nextInt(max));
  }
  return number;
}

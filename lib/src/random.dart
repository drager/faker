import 'dart:math';

var _rng = new Random();

randomElement(List list) {
  return list[_rng.nextInt(list.length)];
}

List<int> randomNumber(num max, num times) {
  var number = [];

  for (var i = 0; i < times; i++) {
    number.add(_rng.nextInt(max));
  }
  return number;
}

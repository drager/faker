import 'data/date_time/time_zones.dart';
import 'random_generator.dart';

class Date {
  const Date(this._random);

  final RandomGenerator _random;

  static final _yearSuffixes = [
    'BC',
    'AD',
  ];

  static final _timeSuffixes = [
    'AM',
    'PM',
  ];

  static final _months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  /// Generates a random [DateTime]
  /// By default the range of the years will be between 0 and 10000. But that can
  /// be adjusted with the minYear and maxYear args
  ///
  /// Example:
  /// ```dart
  ///   faker.date.dateTime();
  ///   faker.date.dateTime(minYear: 2000, maxYear: 2020);
  /// ```
  DateTime dateTime({int minYear = 0, int maxYear = 10000}) {
    return DateTime(
      _random.integer(maxYear, min: minYear), // year
      _random.integer(13, min: 1), // month
      _random.integer(32, min: 1), // day
      _random.integer(24), // hour
      _random.integer(60), // minute
      _random.integer(60), // second
      _random.integer(1000), // millisecond
      _random.integer(1000), // microsecond
    );
  }

  /// Generates a random [DateTime] in between 2 given dates.
  /// This is accurate to the nearest hour.
  /// Example:
  /// ```dart
  ///   faker.date.dateTimeBetween(DateTime(2017, 9, 7), DateTime(2020, 9, 7));
  /// ```
  DateTime dateTimeBetween(DateTime startDate, DateTime endDate) {
    final hoursInBetween = endDate.difference(startDate).inHours;
    return DateTime(
      startDate.year, // year
      startDate.month, // month
      startDate.day, // day
      startDate.hour + _random.integer(hoursInBetween), // hour
      _random.integer(60), // minute
      _random.integer(60), // second
      _random.integer(1000), // millisecond
      _random.integer(1000), // microsecond
    );
  }

  /// Generates a random month
  ///
  /// Example:
  /// ```dart
  ///   faker.date.month()
  /// ```
  String month() {
    return _random.element(_months);
  }

  /// Generates a random year.
  /// By default the range of the years will be between 0 and 10000. But that can
  /// be adjusted with the minYear and maxYear args
  ///
  /// Example:
  /// ```dart
  ///   faker.date.year();
  /// ```
  String year({int minYear = 0, int maxYear = 10000}) {
    final date = dateTime(minYear: minYear, maxYear: maxYear);

    // Just year
    if (_random.boolean()) {
      return '${date.year}';
    }
    // Year with suffix
    else {
      return '${date.year} ${_random.element(_yearSuffixes)}';
    }
  }

  /// Generates a random time
  /// Such as 23:52, 3:42 PM, 6:00 AM PST
  ///
  /// Example:
  /// ```dart
  ///   faker.date.time()
  /// ```
  String time() {
    final date = dateTime();

    var timeSuffix = '';
    if (_random.boolean()) {
      timeSuffix = '${_random.element(_timeSuffixes)} ';
    }

    var timeZone = '';
    if (_random.boolean()) {
      timeZone = _random.element(timeZones);
    }

    // If we have a time suffix, convert the hour to a 12-hour clock
    String hour;
    if (timeSuffix.isNotEmpty) {
      hour = (date.hour % 13).toString();
    } else {
      hour = (date.hour < 10) ? '0${date.hour}' : date.hour.toString();
    }

    // If the minute is a single digit (i.e. less than 10)
    // We want to prepend a 0 to it.
    final minute =
        (date.minute < 10) ? '0${date.minute}' : date.minute.toString();

    return '$hour:$minute $timeSuffix$timeZone';
  }

  /// Generates a random time (only digits)
  /// Such as 23:52, 06:45, 03:14
  String justTime() {
    final date = dateTime();
    String hour = (date.hour < 10) ? '0${date.hour}' : date.hour.toString();

    // If the minute is a single digit (i.e. less than 10)
    // We want to prepend a 0 to it.
    final minute =
        (date.minute < 10) ? '0${date.minute}' : date.minute.toString();

    return '$hour:$minute';
  }
}

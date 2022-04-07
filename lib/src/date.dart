import 'data/date_time/time_zones.dart';
import 'random_generator.dart';

class Date {
  const Date(this.random);

  final RandomGenerator random;

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
      random.integer(maxYear, min: minYear), // year
      random.integer(13, min: 1), // month
      random.integer(32, min: 1), // day
      random.integer(24), // hour
      random.integer(60), // minute
      random.integer(60), // second
      random.integer(1000), // millisecond
      random.integer(1000), // microsecond
    );
  }

  /// Generates a random [DateTime] in between 2 given dates
  ///
  /// Example:
  /// ```dart
  ///   faker.date.dateTimeBetween(DateTime(2017, 9, 7), DateTime(2020, 9, 7));
  /// ```
  DateTime dateTimeBetween(DateTime startDate, DateTime endDate) {
    final daysInBetween = endDate.difference(startDate).inDays;
    return DateTime(
      startDate.year, // year
      startDate.month, // month
      startDate.day + random.integer(daysInBetween), // day
      random.integer(24), // hour
      random.integer(60), // minute
      random.integer(60), // second
      random.integer(1000), // millisecond
      random.integer(1000), // microsecond
    );
  }

  /// Generates a random month
  ///
  /// Example:
  /// ```dart
  ///   faker.date.month()
  /// ```
  String month() {
    return '${random.element(_months)}';
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
    if (random.boolean()) {
      return '${date.year}';
    }
    // Year with suffix
    else {
      return '${date.year} ${random.element(_yearSuffixes)}';
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
    if (random.boolean()) {
      timeSuffix = random.element(_timeSuffixes) + ' ';
    }

    var timeZone = '';
    if (random.boolean()) {
      timeZone = random.element(timeZones);
    }

    // If we have a time suffix, convert the hour to a 12-hour clock
    String hour;
    if (timeSuffix.isNotEmpty) {
      hour = (date.hour % 13).toString();
    } else {
      hour =
          (date.hour < 10) ? '0' + date.hour.toString() : date.hour.toString();
    }

    // If the minute is a single digit (i.e. less than 10)
    // We want to prepend a 0 to it.
    final minute = (date.minute < 10)
        ? '0' + date.minute.toString()
        : date.minute.toString();

    return '${hour}:${minute} ${timeSuffix}${timeZone}';
  }
}

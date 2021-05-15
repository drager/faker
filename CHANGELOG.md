# Changelog

## 2.0.0
- RC to stable

## 2.0.0-rc.2
- Add JWT support. [Issue #42](https://github.com/drager/faker/issues/42), [PR #43](https://github.com/drager/faker/pull/43)
- Remove unnecessary nullables. [Issue #40](https://github.com/drager/faker/issues/40), [PR #41](https://github.com/drager/faker/pull/41)

## 2.0.0-rc.1

- Add null safety. [Issue #37](https://github.com/drager/faker/issues/37), [PR #38](https://github.com/drager/faker/pull/38)
- Seed support for random generator. [Issue #25](https://github.com/drager/faker/issues/25), [PR #32](https://github.com/drager/faker/pull/32)
- Add ability to ensure a random image is pulled with the same search parameters. [Issue #35](https://github.com/drager/faker/issues/35), [PR #36](https://github.com/drager/faker/pull/36)
- Add phone number support. [Issue #33](https://github.com/drager/faker/issues/33), [PR #34](https://github.com/drager/faker/pull/34)
- Add support for localized Farsi lorem text. [Issue #30](https://github.com/drager/faker/issues/30), [PR #31](https://github.com/drager/faker/pull/31)

## 1.3.0

- Add userAgent method to internet.dart. [Issue #26](https://github.com/drager/faker/issues/26), [PR #28](https://github.com/drager/faker/pull/28)

```dart
faker.internet.userAgent();
faker.internet.userAgent(osName:'iOS');
```

- Add image to faker. [Issue #19](https://github.com/drager/faker/issues/19), [PR #21](https://github.com/drager/faker/pull/21)

```dart
faker.image.image(width: 1200, height: 900, keywords: 'nature,people');
```

## 1.2.1

- Apply pub.dev health suggestions to improve score. [Issue #17](https://github.com/drager/faker/issues/17), [PR #18](https://github.com/drager/faker/pull/18)

## 1.2.0

- Added DateTime generator. [Issue #13](https://github.com/drager/faker/issues/13), [PR #15](https://github.com/drager/faker/pull/15)
- Fix `lorem.sentences` returned words instead of sentences. [Issue #14](https://github.com/drager/faker/issues/14), [PR #12](https://github.com/drager/faker/pull/12)

## 1.1.0

- Added lorem sentences and words
- Added continents
- Added generics to `randomGenerator.element()`

## 1.0.0

- Make faker compatible with Dart 2.0.

## 0.0.5

- fix: Remove illegal chars from generated domain words

## 0.0.4

- Added food generator, includes restaurants, dishes and cuisines

## 0.0.3

- fix: Type faker constant to Faker

## 0.0.2

- Added support for guids
- Added fromPatternToHex method that generates a random set of numbers
  from a given pattern and return it as hex

## 0.0.1

- Initial release

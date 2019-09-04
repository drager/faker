import 'package:faker/faker.dart';
import 'package:test/test.dart';

main() {
  group('Lorem', (){
    group('words', () {
      test('should be able to generate single word', () {
        expect(faker.lorem.word(), matches(new RegExp(r'^[\w-^]+$')));
      });

      test('should be able to generate word list', () {
        expect(faker.lorem.words(3), hasLength(3));
      });
    });

    group('senetences', () {
      test('should be able to generate sentence', () {
        expect(faker.lorem.sentence(), matches(new RegExp(r'^[\w^ ]+\.$')));
      });

      test('should be able to generate sentence list', () {
        expect(faker.lorem.sentences(3), hasLength(3));
      });
    });
  });
}

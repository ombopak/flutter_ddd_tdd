import 'package:flutter_ddd_tdd/domain/value_object/failure.dart';
import 'package:flutter_ddd_tdd/domain/value_object/isbn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ISBN', (){

    test('should return Failure when invalid isbn format', () {
      //arrange
      var isbn = ISBN.create('992919').fold((err) => err, (isbn) => isbn);

      //assert
      expect(isbn, const TypeMatcher<Failure>());
    });

    test('should return isbn when value is valid isbn-10', () {
      //arrange
      var str = 'ISBN-10: 0-596-52068-9';
      var isbn = ISBN.create(str).getOrElse(() => const ISBN(null));

      //assert
      expect(isbn.value, str);
    });

    test('should return isbn when value is valid isbn-13', () {
      //arrange
      var str = 'ISBN-13: 978-0-596-52068-7';
      var isbn = ISBN.create(str).getOrElse(() => const ISBN(null));
      //assert
      expect(isbn.value, str);
    });

  });
}
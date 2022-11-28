import 'package:flutter_ddd_tdd/domain/domain_exception.dart';
import 'package:flutter_ddd_tdd/domain/entities/book.dart';
import 'package:flutter_ddd_tdd/domain/entities/bookshelf.dart';
import 'package:flutter_ddd_tdd/domain/value_object/identity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late BookShelf sut; //NOTE: sut == System Under Test;

  setUp(() {
    sut = BookShelf(id: Identity.fromString('aaa'));
  });
  group('Bookshelf', () {
    test(
        'addBook() should throw and DomainException when Bookshelf exceeds its capacity ',
        () {
      // arrange
      for (int i = 0; i < 10; i++) {
        sut.addBook(Book());
      }

      //act

      //assert
      expect(
          () => sut.addBook(Book()), throwsA(const TypeMatcher<DomainException>()));
    });

    test('addBook() should add book to the shelf', () {
      // arrange
      var book = Book();

      //act
      sut.addBook(book);

      //assert
      expect(sut.books.length, 1);
    });
  });
}

import 'package:flutter_ddd_tdd/domain/domain_exception.dart';
import 'package:flutter_ddd_tdd/domain/entities/book.dart';
import 'package:flutter_ddd_tdd/domain/value_object/identity.dart';

class BookShelf {
  static const MAX_CAPACITY = 10;
  Identity id;
  late List<Book> _books;

  //getter
  List<Book> get books => _books;

  BookShelf({required this.id}) {
    _books = [];
  }

  addBook(Book book) {
    if (_books.length == MAX_CAPACITY) {
      throw DomainException('Book shelf has reached maximum capacity');
    } else {
      book.shelfId = id;
      _books.add(book);
    }
  }
}

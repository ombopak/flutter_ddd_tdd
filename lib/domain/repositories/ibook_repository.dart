import 'package:flutter_ddd_tdd/domain/entities/book.dart';
import 'package:flutter_ddd_tdd/domain/value_object/identity.dart';

abstract class IBookRepository {
  add(Book book);
  update(Book book);
  delete(Book book);
  find(Identity bookId);
  findAll();
}

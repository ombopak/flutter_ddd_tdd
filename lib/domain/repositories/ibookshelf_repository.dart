import 'package:flutter_ddd_tdd/domain/entities/bookshelf.dart';
import 'package:flutter_ddd_tdd/domain/value_object/identity.dart';

abstract class IBookshelfRepository {
  add(BookShelf bookShelf);
  update(BookShelf bookShelf);
  find(Identity shelfId);
}
import 'package:flutter_ddd_tdd/domain/entities/book.dart';
import 'package:flutter_ddd_tdd/domain/entities/bookshelf.dart';
import 'package:flutter_ddd_tdd/domain/value_object/author.dart';
import 'package:flutter_ddd_tdd/domain/value_object/isbn.dart';
import 'package:flutter_ddd_tdd/domain/value_object/publish_date.dart';
import 'package:flutter_ddd_tdd/domain/value_object/title.dart';

abstract class IEntityFactory {
  Book newBook({
    required Title title,
    required Author author,
    required ISBN isbn,
    required PublishDate publishDate,
  });

  BookShelf newBookShelf();
}

import 'package:flutter_ddd_tdd/domain/factories/ientity_factory.dart';
import 'package:flutter_ddd_tdd/domain/repositories/ibook_repository.dart';
import 'package:flutter_ddd_tdd/domain/repositories/ibookshelf_repository.dart';

class AddBookUseCase {
  IBookshelfRepository? shelfRepository;
  IBookRepository bookRepository;
  IEntityFactory entityFactory;

  AddBookUseCase({
    required this.shelfRepository,
    required this.bookRepository,
    required this.entityFactory,
  });
}

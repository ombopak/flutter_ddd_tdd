import 'package:flutter_ddd_tdd/application/usecases/add_book_usecase.dart';
import 'package:flutter_ddd_tdd/domain/factories/ientity_factory.dart';
import 'package:flutter_ddd_tdd/domain/repositories/ibook_repository.dart';
import 'package:flutter_ddd_tdd/domain/repositories/ibookshelf_repository.dart';
import 'package:flutter_ddd_tdd/domain/value_object/author.dart';
import 'package:flutter_ddd_tdd/domain/value_object/identity.dart';
import 'package:flutter_ddd_tdd/domain/value_object/isbn.dart';
import 'package:flutter_ddd_tdd/domain/value_object/publish_date.dart';
import 'package:flutter_ddd_tdd/domain/value_object/title.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockShelfRepository extends Mock implements IBookshelfRepository {}

class MockBookRepository extends Mock implements IBookRepository {}

class MockEntityFactory extends Mock implements IEntityFactory {}

void main() {
  AddBookUseCase sut;
  MockShelfRepository? mockShelfRepository;
  MockBookRepository mockBookRepository;
  MockEntityFactory mockEntityFactory;

  setUp((() {
    mockBookRepository = MockBookRepository();
    mockShelfRepository = MockShelfRepository();
    mockEntityFactory = MockEntityFactory();

    sut = AddBookUseCase(
      shelfRepository: mockShelfRepository,
      bookRepository: mockBookRepository,
      entityFactory: mockEntityFactory,
    );
  }));

  group('addBookUsecase', () {
    var title = Title.create('Book Title').getOrElse(() => Title(null));
    var author = Author.create('Book Author').getOrElse(() => Author(null));
    var isbn =
        ISBN.create('ISBN-10: 0-596-52068-9').getOrElse(() => ISBN(null));
    var publishDate =
        PublishDate.create('2020-01-20').getOrElse(() => PublishDate(null));

    var input = AddBookInput(
      shelfId: Identity.fromString('add'),
      title: title,
      author: author,
      isbn: isbn,
      publishDate: publishDate,
    );

    test('should return a Failure when bookshelf(id) does not exist', () {
      // arrange
      when(mockShelfRepository?.find(input.shelfId)).thenAnswer((_) => null);

      //act
      var result = sut.execute(input);

      //assert
      expect(result.isLeft(), true);
    });
  });
}

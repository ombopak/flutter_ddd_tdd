import 'package:flutter_ddd_tdd/domain/value_object/author.dart';
import 'package:flutter_ddd_tdd/domain/value_object/failure.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group('Author', (){
    test('should return Failure when value is empty', () {
      //arrange
      var author = Author.create('').fold((err) => err, (author) => author);

      //assert
      expect(author, TypeMatcher<Failure>());
    });

    test('should create author when value is not empty', () {
      //arrange
      var str = 'John Thor';
      var author = Author.create(str).getOrElse(() => Author(null));

      //assert
      expect(author.value, str);
      
    });
  });
}
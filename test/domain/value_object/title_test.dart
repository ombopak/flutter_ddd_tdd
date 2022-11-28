import 'package:flutter_ddd_tdd/domain/value_object/failure.dart';
import 'package:flutter_ddd_tdd/domain/value_object/title.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group('Title', (){
    test('should return Failure when value is empty', () {
      //arrange
      var title = Title.create('').fold((err) => err, (title) => title);

      //assert
      expect(title, const TypeMatcher<Failure>());
    });

    test('should create title when value is not empty', () {
      //arrange
      var str = 'Programming Book';
      var title = Title.create(str).getOrElse(() => const Title(null),);

      //assert
      expect(title.value, str);
      
    });
  });
}



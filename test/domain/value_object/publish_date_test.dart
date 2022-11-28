import 'package:flutter_ddd_tdd/domain/value_object/failure.dart';
import 'package:flutter_ddd_tdd/domain/value_object/publish_date.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Publish Date', () {
    test('should return Failure when value is not formatted properly', () {
      //arrange
      var date = PublishDate.create('2019.07.21').fold((l) => l, (r) => r);
      //assert
      expect(date, const TypeMatcher<Failure>());
    });

    test('should set date when date is valid', () {
      //arrange
      var str = '2019-07-23';
      var date = PublishDate.create(str).getOrElse(() => const PublishDate(null));

      //assert
      expect(date.toDate(), DateTime(2019, 07, 23));
    });
  });
}

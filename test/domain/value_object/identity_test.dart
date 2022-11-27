// import 'package:flutter_ddd_tdd/domain/value_object/failure.dart';
// import 'package:flutter_ddd_tdd/domain/value_object/identity.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main(){
//   group('Identity', () {
//     test('should return Failure when value is empty', () {
//       //arrange
//       var identity = Identity.create('').fold((err) => err, (identity) => identity);


//       //assert
//       expect(identity, TypeMatcher<Failure>());
//     });

//     test('should create identity when value is not empty', () {
//       //arrange
//       var str = 'book001';
//       var identity = Identity.create(str).getOrElse(() => Identity(null));

//       //assert
//       expect(identity.id, str);
//     });
//   });
// }
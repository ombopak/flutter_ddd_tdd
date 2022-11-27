import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ddd_tdd/domain/value_object/failure.dart';

// class Identity extends Equatable {
//   final String? id;

//   const Identity(this.id);

//   static Either<Failure, Identity> create(String id) {
//     if (id == null || id.isEmpty) {
//       return Left(Failure('Identity cannot be empty'));
//     } else {
//       return Right(Identity(id));
//     }
//   }

//   @override
//   List<Object?> get props => [id];
// }

class Identity extends Equatable {
  final String? id;

  factory Identity.fromString(String id) {
    return Identity._internal(id);
  }

  Identity._internal(this.id);

  Identity(this.id);

  @override
  List<Object?> get props => [id];
}

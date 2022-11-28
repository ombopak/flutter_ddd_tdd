import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ddd_tdd/domain/value_object/failure.dart';

class Title extends Equatable {
  final String? value;

  const Title(this.value);

  static Either<Failure, Title> create(String value) {
    if (value.isEmpty) {
      return const Left(Failure('Title cannot be empty'));
    } else {
      return Right(Title(value));
    }
  }

  @override
  List<Object?> get props => [value];
}

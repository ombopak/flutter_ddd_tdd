import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ddd_tdd/domain/value_object/failure.dart';

class Author extends Equatable {
  final String? value;

  const Author(this.value);

  static Either<Failure, Author> create(String value) {
    if (value.isEmpty) {
      return const Left(Failure('Author cannot be empty'));
    } else {
      return Right(Author(value));
    }
  }

  @override
  List<Object?> get props => [value];
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ddd_tdd/domain/value_object/failure.dart';
import 'package:intl/intl.dart';

class PublishDate extends Equatable {
  final String? value;

  const PublishDate(this.value);

  static Either<Failure, PublishDate> create(String value) {
    final formatter = DateFormat('yyyy-MM-dd');
    try {
      formatter.parseStrict(value);
    } catch (e) {
      return const Left(Failure('incorrect date format "yyyy-MM-dd"'));
    }
    return Right(PublishDate(value));
  }

  DateTime toDate() => DateTime.parse(value!);

  @override
  List<Object?> get props => [value];

}
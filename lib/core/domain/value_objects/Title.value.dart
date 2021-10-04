import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'Failure.value.dart';

class Title extends Equatable {
  final String value;

  Title._(this.value);

  static Either<Failure, Title> create(String? value) {
    if (value == null || value.isEmpty)
      return Left(Failure("Title can not be empty or null"));
    else
      return Right(Title._(value));
  }

  @override
  List<Object?> get props => [value];
}

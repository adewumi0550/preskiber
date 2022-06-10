import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:preskriber/app/features/patients/domain/patients/patients_failure.dart';

//Todo:Check the Value Object
class EmailAddress extends Equatable {
  final String value;
  const EmailAddress._(this.value);

  static Either<Failure, EmailAddress> create(String value) {
    final RegExp emailRegex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (value.isEmpty || emailRegex.hasMatch(value)) {
      return Left(Failure('Email Address is required'));
    } else {
      return Right(EmailAddress._(value));
    }
  }

  @override
  List<Object> get props => [value];
}

class Password extends Equatable {
  final String value;
  const Password._(this.value);

  static Either<Failure, Password> create(String value) {
    if (value.isEmpty || value.length < 6) {
      return Left(Failure('Password is required'));
    } else {
      return Right(Password._(value));
    }
  }

  @override
  List<Object> get props => [value];
}

class FullName extends Equatable {
  final String value;
  const FullName._(this.value);

  static Either<Failure, FullName> create(String value) {
    if (value.isEmpty) {
      return Left(Failure('Full Name is required'));
    } else {
      return Right(FullName._(value));
    }
  }

  @override
  List<Object> get props => [value];
}

class ConfirmPassword extends Equatable {
  final String value;
  const ConfirmPassword._(this.value);

  static Either<Failure, ConfirmPassword> create(String value) {
    if (value.isEmpty) {
      return Left(Failure('Password is required'));
    }
    if (value.length <= 6) {
      return Left(Failure('Password Length is too short'));
    } else {
      return Right(ConfirmPassword._(value));
    }
  }

  @override
  List<Object> get props => [value];

  void add(ConfirmPassword confirmPassword) {}
}

class PhoneNumber extends Equatable {
  final String value;
  const PhoneNumber._(this.value);

  static Either<Failure, PhoneNumber> create(String value) {
    if (value.isEmpty) {
      return Left(Failure('Phone Number is required'));
    } else {
      return Right(PhoneNumber._(value));
    }
  }

  @override
  List<Object> get props => [value];
}
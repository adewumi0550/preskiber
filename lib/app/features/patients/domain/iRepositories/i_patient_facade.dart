import 'package:dartz/dartz.dart';
import 'package:preskriber/app/features/patients/domain/patients/patients_failure.dart';
import 'package:preskriber/app/features/patients/domain/value_objects.dart';

import '../patients/patients_entities.dart';


abstract class IPatientAuthFacade{
  Future<Either<Failure, PatientEntity>> signIn(EmailAddress emailAddress, Password password);
  Future<Either<Failure, PatientEntity>> signUp(EmailAddress emailAddress, Password password);
  Future<Either<Failure, PatientEntity>> getUserProfile(EmailAddress emailAddress, Password password);
  Future<Either<Failure, void>> getCountries();
  Future<Either<Failure, void>> getDepartments();
  Future<Either<Failure, void>> findDoctor();
  Future<Either<Failure, void>> confirmPayment(String appointment_id, String payment_status);
}
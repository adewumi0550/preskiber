
import 'package:preskriber/app/features/patients/domain/value_objects.dart';

class PatientEntity {
  EmailAddress emailAddress;
  Password? password;
  PhoneNumber phoneNumber;
  FullName fullName;
  int id;
  String? preskriber_id;
  String? pincode;
  String? documents;
  String created_by;
  String updated_by;
  String created_at;
  String? updated_at;
  int age;
  String? gender;
  String? id_number;
  String dob;
  String address;
  String is_insurance;
  String insurance_id;
  String hmo_id;
  String insurance_status;
  String latitude;
  double ff  ;
  String otp;
  String health_data;
  String image;
  int role_id;
String expiry_ambulance;
  int privacy_send_request;
  String  lagos;
  String  state;
  String country;

  PatientEntity({
    required this.emailAddress,
    this.password,
    required this.phoneNumber,
    required this.fullName,
    required this.id,
    this.preskriber_id,
    this.pincode,
    this.documents,
    required this.created_by,
    required this.updated_by,
    required this.created_at,
    this.updated_at,
    required this.age,
    this.gender,
    this.id_number,
    required this.dob,
    required this.address,
    required this.is_insurance,
    required this.insurance_id,
    required this.hmo_id,
    required this.insurance_status,
    required this.latitude,
    required this.ff,
    required this.otp,
    required this.health_data,
    required this.image,
    required this.role_id,
    required this.expiry_ambulance,
    required this.privacy_send_request,
    required this.lagos,
    required this.state,
    required this.country,
  });
}

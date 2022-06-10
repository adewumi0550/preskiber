import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? emailAddress;
  final String? password;
  final String? phoneNumber;
  final String? device_type;
  final String? device_token;
  final String? device_name;
  final String? fullName;
  final int? id;
  final String? preskriber_id;
  final String? pincode;
  final String? documents;
  final String? created_by;
  final String? updated_by;
  final String? created_at;
  final String? updated_at;
  final int? age;
  final String? gender;
  final String? id_number;
  final String? dob;
  final String? address;
  final String? is_insurance;
  final String? insurance_id;
  final String? hmo_id;
  final String? insurance_status;
  final String? latitude;
  final String? otp;
  final String? health_data;
  final String? image;
  final int? role_id;
  final String? expiry_ambulance;
  final int? privacy_send_request;
  final String? city;
  final String? state;
  final String? country;

  @override
  // TODO: implement props
  List<Object?> get props => [
        emailAddress,
        password,
        phoneNumber,
        fullName,
        id,
        preskriber_id,
        pincode,
      ];

  const UserEntity({
    this.emailAddress,
    this.password,
    this.phoneNumber,
    this.fullName,
    this.device_name,
    this.device_token,
    this.device_type,
    this.id,
    this.preskriber_id,
    this.pincode,
    this.documents,
    this.created_by,
    this.updated_by,
    this.created_at,
    this.updated_at,
    this.age,
    this.gender,
    this.id_number,
    this.dob,
    this.address,
    this.is_insurance,
    this.insurance_id,
    this.hmo_id,
    this.insurance_status,
    this.latitude,
    this.otp,
    this.health_data,
    this.image,
    this.role_id,
    this.expiry_ambulance,
    this.privacy_send_request,
    this.city,
    this.state,
    this.country,
  });
}

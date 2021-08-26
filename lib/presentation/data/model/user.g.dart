// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************
// ignore:non_constant_identifier_names
_$_Address _$_$_AddressFromJson(Map<String, dynamic> json) {
  return _$_Address(
    street: json['street'] as String,
    suite: json['suite'] as String,
    city: json['city'] as String,
    zipcode: json['zipcode'] as String,
  );
}

// ignore:non_constant_identifier_names
Map<String, dynamic> _$_$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
    };
// ignore:non_constant_identifier_names
_$_Company _$_$_CompanyFromJson(Map<String, dynamic> json) {
  return _$_Company(
    name: json['name'] as String,
    catchPhrase: json['catchPhrase'] as String,
    bs: json['bs'] as String,
  );
}

// ignore:non_constant_identifier_names
Map<String, dynamic> _$_$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
// ignore:non_constant_identifier_names
_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    website: json['website'] as String,
    address: Address.fromJson(json['address'] as Map<String, dynamic>),
    company: Company.fromJson(json['company'] as Map<String, dynamic>),
  );
}

// ignore:non_constant_identifier_names
Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'address': instance.address,
      'company': instance.company,
    };

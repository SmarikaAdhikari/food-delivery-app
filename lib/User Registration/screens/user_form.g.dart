// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyMemberImpl _$$FamilyMemberImplFromJson(Map<String, dynamic> json) =>
    _$FamilyMemberImpl(
      name: json['name'] as String,
      relationship: json['relationship'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
    );

Map<String, dynamic> _$$FamilyMemberImplToJson(_$FamilyMemberImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'relationship': instance.relationship,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
    };

_$UserRegistrationImpl _$$UserRegistrationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationImpl(
      name: json['name'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      favoriteAnimal: json['favoriteAnimal'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      phone: json['phone'] as String,
      familyMembers: (json['familyMembers'] as List<dynamic>)
          .map((e) => FamilyMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserRegistrationImplToJson(
        _$UserRegistrationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'favoriteAnimal': instance.favoriteAnimal,
      'email': instance.email,
      'password': instance.password,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'phone': instance.phone,
      'familyMembers': instance.familyMembers,
    };

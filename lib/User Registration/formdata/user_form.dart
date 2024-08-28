// ignore_for_file: unnecessary_null_comparison, use_key_in_widget_constructors

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form.freezed.dart';
part 'user_form.g.dart';

@freezed
class FamilyMember with _$FamilyMember {
  const factory FamilyMember({
    required String name,
    required String relationship,
    required DateTime dateOfBirth,
  }) = _FamilyMember;

  factory FamilyMember.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberFromJson(json);
}

@freezed
class UserRegistration with _$UserRegistration {
  const factory UserRegistration({
    required String name,
    required DateTime dateOfBirth,
    required String favoriteAnimal,
    required String email,
    required String password,
    required String address,
    required String city,
    required String state,
    required String phone,
    required List<FamilyMember> familyMembers,
  }) = _UserRegistration;

  factory UserRegistration.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationFromJson(json);
}


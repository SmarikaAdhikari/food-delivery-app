// ignore_for_file: unnecessary_null_comparison, use_key_in_widget_constructors

import 'package:flutter/material.dart';
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

class FamilyMemberForm extends StatelessWidget {
  final int index;
  final FamilyMember familyMember;
  final VoidCallback onRemove;
  final ValueChanged<FamilyMember> onChanged;

  const FamilyMemberForm({
    required this.index,
    required this.familyMember,
    required this.onRemove,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Family Member ${index + 1}",
                style: const TextStyle(fontSize: 18)),
            TextFormField(
              initialValue: familyMember.name,
              decoration: const InputDecoration(labelText: "Name"),
              onChanged: (value) {
                onChanged(familyMember.copyWith(name: value));
              },
            ),
            TextFormField(
              initialValue: familyMember.relationship,
              decoration: const InputDecoration(labelText: "Relationship"),
              onChanged: (value) {
                onChanged(familyMember.copyWith(relationship: value));
              },
            ),
            GestureDetector(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: familyMember.dateOfBirth,
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (date != null) {
                  onChanged(familyMember.copyWith(dateOfBirth: date));
                }
              },
              child: InputDecorator(
                decoration: const InputDecoration(
                  labelText: 'Date of Birth',
                ),
                child: Text(familyMember.dateOfBirth != null
                    ? "${familyMember.dateOfBirth.toLocal()}".split(' ')[0]
                    : 'Select Date'),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: onRemove,
              child: const Text('Remove Family Member'),
            ),
          ],
        ),
      ),
    );
  }
}

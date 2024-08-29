// ignore_for_file: use_key_in_widget_constructors, unnecessary_null_comparison

import 'package:flutter/material.dart';

import '../formdata/user_form.dart';

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
              child: const Text('Remove Family Member',
                  style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}

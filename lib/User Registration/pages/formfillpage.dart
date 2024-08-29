// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields, unused_local_variable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'familydetailspage.dart';
import 'datapage.dart';
import '../formdata/user_form.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _verifyPasswordController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _phoneController = TextEditingController();
  DateTime? _dateOfBirth;
  String? _favoriteAnimal;
  String? _state;
  List<FamilyMember> _familyMembers = [];

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _verifyPasswordController.dispose();
    _addressController.dispose();
    _cityController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 202, 243),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 158, 134, 199),
        title: const Center(
            child: Text("User Registration Form",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (date != null) {
                      setState(() {
                        _dateOfBirth = date;
                      });
                    }
                  },
                  child: InputDecorator(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Date of Birth',
                      errorText:
                          _dateOfBirth == null ? 'Please select a date' : null,
                    ),
                    child: Text(
                      _dateOfBirth != null
                          ? DateFormat('yyyy-MM-dd').format(_dateOfBirth!)
                          : 'Select Date',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Favorite Animal"),
                  items: ['Dog', 'Cat', 'Rabbit', 'Monkey', 'Tiger', 'Others']
                      .map((animal) {
                    return DropdownMenuItem(
                        value: animal,
                        child: Text(animal,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400)));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _favoriteAnimal = value;
                    });
                  },
                  validator: (value) =>
                      value == null ? "Please select an animal" : null,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _verifyPasswordController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Verify Password"),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please verify your password";
                    }
                    if (value != _passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _addressController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Address"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your address";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _cityController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "City"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your city";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "State"),
                  items: [
                    'Province-1',
                    'Province-2',
                    'Province-3',
                    'Province-4',
                    'Province-5',
                    'Province-6',
                    'Province-7'
                  ].map((state) {
                    return DropdownMenuItem(
                        value: state,
                        child: Text(state,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400)));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _state = value;
                    });
                  },
                  validator: (value) =>
                      value == null ? "Please select a state" : null,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _phoneController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Phone"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your phone number";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _familyMembers.length,
                  itemBuilder: (context, index) {
                    return FamilyMemberForm(
                      index: index,
                      familyMember: _familyMembers[index],
                      onRemove: () => setState(() {
                        _familyMembers.removeAt(index);
                      }),
                      onChanged: (member) => setState(() {
                        _familyMembers[index] = member;
                      }),
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _familyMembers.add(FamilyMember(
                        name: '',
                        relationship: '',
                        dateOfBirth: DateTime.now(),
                      ));
                    });
                  },
                  child: const Text("Add Family Member",
                      style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      final userForm = UserRegistration(
                        name: _nameController.text,
                        dateOfBirth: _dateOfBirth!,
                        favoriteAnimal: _favoriteAnimal!,
                        email: _emailController.text,
                        password: _passwordController.text,
                        address: _addressController.text,
                        city: _cityController.text,
                        state: _state!,
                        phone: _phoneController.text,
                        familyMembers: _familyMembers,
                      );
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DataPage(userRegistration: userForm);
                      }));
                      print(userForm);
                    }
                  },
                  child: const Text("Submit", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

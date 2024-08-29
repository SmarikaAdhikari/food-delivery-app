// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,

      ),);
   
  }
}
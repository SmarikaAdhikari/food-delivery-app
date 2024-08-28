// ignore_for_file: deprecated_member_use, unused_import
import 'package:awakened_devs_tasks/Food%20Delivery%20App/buttomnavigationpage.dart';
import 'package:awakened_devs_tasks/User%20Registration/pages/formfillpage.dart';
import 'package:awakened_devs_tasks/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Food Delivery App/models/cartmodel.dart';
import 'Food Delivery App/models/favoritemodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartModel()),
        ChangeNotifierProvider(create: (_) => FavoritesModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: appTheme,
      home: RegistrationForm(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
//feature/ui-implementation
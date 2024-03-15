import 'package:application/pages/home_page.dart';
import 'package:application/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) {
          return const HomePage();
        },
        "/profile": (context) => const ProfilePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: "/home",
    );
  }
}




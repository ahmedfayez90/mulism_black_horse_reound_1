import 'package:flutter/material.dart';
import 'package:muslim/core/constant.dart';
import 'package:muslim/mvc/view/screens/landing_screen.dart';
import 'package:muslim/mvc/view/screens/quran_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor,
          useMaterial3: true,
          textTheme: const TextTheme(
            titleMedium: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: primaryColor,
              height: 2
            ),
          )),
      initialRoute: LandingScreen.name,
      routes: {
        LandingScreen.name: (c) => const LandingScreen(),
        QuranScreen.name: (c) => const QuranScreen(),
      },
    );
  }
}

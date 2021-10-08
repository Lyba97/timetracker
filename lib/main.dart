import 'package:flutter/material.dart';
import 'package:timetracker/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Tracker',
      //themeMode: ThemeMode.dark,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.purple,
        //textTheme: TextTheme();
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff070417),
        primarySwatch: Colors.purple
      ),
      home: const Home(),
    );
  }
}


import 'package:flutter/material.dart';

import 'package:flutter_clone/presentation/instagram/instram_home_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black),
          centerTitle: false,
        ),
      ),

      debugShowCheckedModeBanner: false,
      home:  App(),
    );
  }
}




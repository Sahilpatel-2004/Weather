import 'package:flutter/material.dart';
import 'package:weatherapp/view/home.dart';
import 'package:weatherapp/view/loading.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: loading(city_search: "surat"),
      routes: {
        "/home":(context) =>home()
      }
    );
  }
}


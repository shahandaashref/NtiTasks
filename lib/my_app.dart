import 'package:flutter/material.dart';
import 'package:studing/pages/Task3.dart';
import 'package:studing/pages/home_page.dart';
import 'package:studing/pages/search_screan.dart';
import 'package:studing/pages/task.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SearchScrean(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterthon/src/home_screen.dart';
import 'package:flutterthon/src/models/items_storage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(items: goodItems,),
    );
  }
}


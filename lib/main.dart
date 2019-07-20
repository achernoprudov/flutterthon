import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/items_storage.dart';
import 'package:flutterthon/src/modules/main/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(items: goodItems,),
    );
  }
}


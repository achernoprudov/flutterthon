import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';
import 'package:flutterthon/src/modules/main/main_cart.dart';
import 'modules/main/main_items_grid.dart';

class HomeScreen extends StatelessWidget {
  final List<GoodItem> items;

  const HomeScreen({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: ListView(
      children: <Widget>[
        MainItemsGrid(items: items),
        MainCart(),
      ],
    ));
  }
}

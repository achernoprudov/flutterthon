import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';
import 'package:flutterthon/src/widgets/good_item_widget.dart';

class HomeScreen extends StatelessWidget {
  var items = [
    new GoodItem("1", "Segianno Organic Troulette", "", "", 7.99, 500),
    new GoodItem("2", "Pasta", "", "", 1.99, 450),
  ]; // TODO add dummy data

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        mainAxisSpacing: 12,
        padding: EdgeInsets.all(12),
        crossAxisSpacing: 12,
        children: items.map((item) => GoodItemWidget(item)).toList(),
        crossAxisCount: 2,
      ),
    );
  }
}

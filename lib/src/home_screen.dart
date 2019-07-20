import 'package:flutter/material.dart';
import 'package:flutterthon/src/grid_item_widget.dart';

class HomeScreen extends StatelessWidget {
  var items = [1, 2, 3, 4, 5, 6, 7, 7, 7, 7, 5]; // TODO add dummy data

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        mainAxisSpacing: 16,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        children: items.map((item) => GridItemWidget(item)).toList(),
        crossAxisCount: 2,
      ),
    );
  }
}

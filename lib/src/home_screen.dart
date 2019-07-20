import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var items = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: items.map(buildGridItem).toList(),
        crossAxisCount: 2,
      ),
    );
  }

  Widget buildGridItem(int item) {
    return Card(
      color: Colors.red,
      elevation: 33,
      child: Container(
        height: 40,
        width: 60,
        color: Colors.blue,
      ),
    );
  }
}

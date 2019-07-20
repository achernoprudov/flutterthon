import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';
import 'package:flutterthon/src/modules/info/good_info_screen.dart';
import 'package:flutterthon/src/widgets/good_item_widget.dart';

class HomeScreen extends StatelessWidget {
  var items = [
    new GoodItem("1", "Segianno Organic Troulette", "", "", 7.99, 500),
    new GoodItem(
        "2",
        "Pasta",
        "",
        "https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/spaghetti_2.jpg?itok=sgV-1uRP",
        1.99,
        450),
    new GoodItem("3", "Tetskhskfhalshdf", "", "", 1.99, 450),
  ]; // TODO add dummy data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey[100],
      child: GridView.count(
        mainAxisSpacing: 12,
        padding: EdgeInsets.all(12),
        crossAxisSpacing: 12,
        children: items
            .map((item) => GoodItemWidget(
                  item: item,
                  onTap: () => openInfo(context, item),
                ))
            .toList(),
        crossAxisCount: 2,
      ),
    ));
  }

  openInfo(BuildContext context, GoodItem item) {
    final route = GoodInfoScreen.route(item);
    Navigator.of(context).push(route);
  }
}

import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';
import 'package:flutterthon/src/modules/main/main_cart.dart';

import 'main_items_grid.dart';

class MainScreen extends StatelessWidget {
  final List<GoodItem> items;

  const MainScreen({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height - 150,
              child: Container(
                decoration: new BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
                height: MediaQuery.of(context).size.height - 150,
                child: MainItemsGrid(items: items),
                padding: EdgeInsets.only(bottom: 24),
              ),
            ),
            MainCart(),
          ],
        ));
  }
}

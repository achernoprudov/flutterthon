import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterthon/src/models/good_item_model.dart';
import 'package:flutterthon/src/modules/main/main_cart.dart';

import 'main_items_grid.dart';

class MainScreen extends StatefulWidget {
  final List<GoodItem> items;

  MainScreen({Key key, this.items}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color clr;
  final controller = ScrollController();

  @override
  void initState() {
    controller.addListener(scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: clr,
        body: ListView(
          controller: controller,
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
                child: MainItemsGrid(items: widget.items),
                padding: EdgeInsets.only(bottom: 24),
              ),
            ),
            MainCart(),
          ],
        ));
  }

  scrollListener() {
    setState(() {
      if (controller.offset > 100) {
        clr = Colors.black;
      } else {
        clr = null;
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';

import 'good_info_bottom_panel.dart';
import 'good_info_content.dart';

class GoodInfoScreen extends StatelessWidget {
  final GoodItem item;

  const GoodInfoScreen({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoodInfoContent(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            alignment: Alignment.bottomCenter,
            child: GoodInfoBottomPanel(),
          ),
        ],
      ),
    );
  }

  static Route<GoodItem> route(GoodItem item) {
    return MaterialPageRoute(builder: (context) {
      return GoodInfoScreen(
        item: item,
      );
    });
  }
}

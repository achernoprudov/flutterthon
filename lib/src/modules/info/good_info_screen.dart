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
          GoodInfoContent(item),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            alignment: Alignment.bottomCenter,
            child: GoodInfoBottomPanel(),
          ),
          BackButton(),
        ],
      ),
    );
  }

  static Route<GoodItem> route(GoodItem item) {
    return PageRouteBuilder(
        pageBuilder: (context, _, __) => GoodInfoScreen(
              item: item,
            ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final tween = Tween(begin: Offset(0, 1), end: Offset(0,0));
          return SlideTransition(
            position: tween.animate(animation),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
        });
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

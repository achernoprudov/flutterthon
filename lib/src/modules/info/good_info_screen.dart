import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';
import 'package:flutterthon/src/modules/info/good_info_container.dart';
import 'package:scoped_model/scoped_model.dart';

import 'good_info_bottom_panel.dart';
import 'good_info_content.dart';

class GoodInfoScreen extends StatelessWidget {
  final GoodItem item;

  const GoodInfoScreen({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          GoodInfoContent(item),
          Container(
            height: 36,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [
                  0.1,
                  0.4,
                  0.6,
                  0.9
                ],
                    colors: [
                  Color.fromRGBO(250, 250, 250, 0.9),
                  Color.fromRGBO(250, 250, 250, 0.6),
                  Color.fromRGBO(250, 250, 250, 0.4),
                  Color.fromRGBO(250, 250, 250, 0.1),
                ])),
          ),
          BackButton(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.only(left: 18, right: 18, bottom: 24),
        alignment: Alignment.bottomCenter,
        child: GoodInfoBottomPanel(onAddTap: () {
          Navigator.of(context).pop(item);
        }),
      ),
    );
  }

  static Route<GoodItem> route(GoodItem item) {
    return PageRouteBuilder(
        pageBuilder: (context, _, __) => ScopedModel<GoodInfoContainer>(
              model: GoodInfoContainer(item),
              child: GoodInfoScreen(
                item: item,
              ),
            ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final tween = Tween(begin: Offset(0, 1), end: Offset(0, 0));
          return SlideTransition(
            position: tween.animate(animation),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
          //
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

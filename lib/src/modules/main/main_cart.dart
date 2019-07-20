import 'package:flutter/material.dart';
import 'package:flutterthon/src/widgets/cart_item_widget.dart';

class MainCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: MediaQuery.of(context).size.height - 200,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Cart',
            style: textTheme.display1.copyWith(color: Colors.white),
          ),
          ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              CartItemWidget(),
              CartItemWidget(),
              CartItemWidget(),
              CartItemWidget(),
              CartItemWidget(),
              CartItemWidget(),
              CartItemWidget(),
              CartItemWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

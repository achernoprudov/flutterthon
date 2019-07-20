import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';

class GoodItemWidget extends StatelessWidget {
  GoodItem item;

  GoodItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(item.imageUrl),
          Text(
            "\$${item.price.toString()}",
            textAlign: TextAlign.left,
          ),
          Text(
            item.name,
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';

class GoodItemWidget extends StatelessWidget {

  GoodItem item;

  GoodItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      elevation: 33,
      child: Container(
        height: 100,
        width: 60,
        child: Text(
          item.name
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';

class GoodItemWidget extends StatelessWidget {
  final GoodItem item;
  final VoidCallback onTap;

  GoodItemWidget({this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(18))),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 24, bottom: 12),
              alignment: Alignment.center,
              child: Hero(
                tag: 'item-image-${item.uid}',
                child: Image.network(
                  item.imageUrl,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Text(
                "\$${item.price.toString()}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Text(
              item.name,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterthon/src/models/good_item_model.dart';

class GoodInfoContent extends StatelessWidget {
  final GoodItem item;

  const GoodInfoContent(this.item);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      padding: EdgeInsets.only(top: 96, left: 30, right: 30),
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Hero(
            tag: 'item-image-${item.uid}',
            child: Image.network(item.imageUrl),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          item.name,
          style: textTheme.display1.copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          "${item.amount.toString()}g",
          style: textTheme.caption,
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey[200]),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              padding: EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Icon(Icons.remove),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "1",
                    style: textTheme.title,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.add),
                ],
              ),
            ),
            Text(
              "\$${item.price}",
              style: textTheme.display1.copyWith(color: Colors.black),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'About the product',
          style: textTheme.title,
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          item.description,
          style: textTheme.body1,
        ),
        SizedBox(
          height: 36,
        ),
      ],
    );
  }
}

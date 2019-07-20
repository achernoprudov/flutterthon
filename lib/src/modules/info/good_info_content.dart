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
          child: Image.network(item.imageUrl),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          item.name,
          style: textTheme.display1.copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "${item.amount.toString()}g",
          style: textTheme.caption,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(
              child: Text('quantity'),
              onPressed: () {},
            ),
            Text(
              "\$${item.price}",
              style: textTheme.display1.copyWith(color: Colors.black),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'About the product',
          style: textTheme.subhead,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          item.description,
          style: textTheme.body1,
        ),
      ],
    );
  }
}

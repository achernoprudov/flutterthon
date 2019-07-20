import 'package:flutter/material.dart';

class GoodInfoContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      padding: EdgeInsets.only(top: 100, left: 30, right: 30),
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Item name',
          style: textTheme.display1.copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Gramm',
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
              "9.99\$",
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
          'Description has not been written yet',
          style: textTheme.body1,
        ),
      ],
    );
  }
}

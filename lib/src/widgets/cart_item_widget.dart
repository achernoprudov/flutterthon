import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: Icon(
        Icons.ac_unit,
        color: Colors.white,
      ),
      trailing: Text(
        '13.99\$',
        style: textTheme.body1.copyWith(color: Colors.grey),
      ),
      title: Row(
        children: <Widget>[
          Text(
            '1 x',
            style: textTheme.body1.copyWith(color: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Pasta',
            style: textTheme.body1.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}

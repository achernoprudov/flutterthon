import 'package:flutter/material.dart';

class GoodInfoBottomPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            color: Colors.yellow[700],
            textColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text('Add to cart'),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterthon/src/widgets/round_button.dart';

class GoodInfoBottomPanel extends StatelessWidget {
  final VoidCallback onAddTap;

  const GoodInfoBottomPanel({Key key, this.onAddTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: () {},
          padding: EdgeInsets.symmetric(horizontal: 36),
        ),
        Expanded(
            child: RoundButton(
          title: 'Add to cart',
          onTap: onAddTap,
        ))
      ],
    );
  }
}

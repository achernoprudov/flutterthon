import 'package:flutter/material.dart';
import 'package:flutterthon/src/modules/info/good_info_container.dart';
import 'package:scoped_model/scoped_model.dart';

class QuantityButton extends StatefulWidget {
  @override
  _QuantityButtonState createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  var quantity = 1;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
        decoration: new BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey[200]),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        padding: EdgeInsets.all(12),
        child: ScopedModelDescendant<GoodInfoContainer>(
          builder: (context, child, model) {
            return Row(
              children: <Widget>[
                GestureDetector(
                  child: Icon(Icons.remove),
                  onTap: model.decrement,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  model.quantity.toString(),
                  style: textTheme.title,
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: Icon(Icons.add),
                  onTap: model.increment,
                ),
              ],
            );
          },
        ));
  }
}

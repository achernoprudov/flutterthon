import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const RoundButton({Key key, this.onTap, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      color: Colors.yellow[700],
      textColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(title),
      ),
    );
  }
}

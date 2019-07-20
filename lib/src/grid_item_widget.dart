import 'package:flutter/material.dart';

class GridItemWidget extends StatelessWidget {
  GridItemWidget(int item);

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
      ),
    );
  }
}

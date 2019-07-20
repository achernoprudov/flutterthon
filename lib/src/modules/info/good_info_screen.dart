import 'package:flutter/material.dart';

import 'good_info_bottom_panel.dart';
import 'good_info_content.dart';

class GoodInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoodInfoContent(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            alignment: Alignment.bottomCenter,
            child: GoodInfoBottomPanel(),
          ),
        ],
      ),
    );
  }
}

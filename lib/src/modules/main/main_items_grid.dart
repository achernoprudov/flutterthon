import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterthon/src/models/good_item_model.dart';
import 'package:flutterthon/src/modules/info/good_info_screen.dart';
import 'package:flutterthon/src/widgets/good_item_widget.dart';

class MainItemsGrid extends StatelessWidget {
  final List<GoodItem> items;

  const MainItemsGrid({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: StaggeredGridView.countBuilder(
        padding: EdgeInsets.only(top: 48, left: 12, right: 12),
        crossAxisCount: 4,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) => GoodItemWidget(
          item: items[index],
          onTap: () => openInfo(context, items[index]),
        ),
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
    );
  }

  openInfo(BuildContext context, GoodItem item) {
    final route = GoodInfoScreen.route(item);
    Navigator.of(context).push(route);
  }
}

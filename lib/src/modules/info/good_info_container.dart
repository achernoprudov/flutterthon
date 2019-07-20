import 'package:flutterthon/src/models/good_item_model.dart';
import 'package:scoped_model/scoped_model.dart';

class GoodInfoContainer extends Model {
  final GoodItem goodItem;
  var quantity = 1;

  GoodInfoContainer(this.goodItem);

  void decrement() {
    if (quantity < 2) {
      return;
    }
    quantity -= 1;
    notifyListeners();
  }

  void increment() {
    quantity += 1;
    notifyListeners();
  }
}
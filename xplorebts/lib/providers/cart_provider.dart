import 'package:flutter/cupertino.dart';
import 'package:shamo_apps/models/cart_model.dart';
import 'package:shamo_apps/models/product_models.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];
  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(ProductModel product) {
    if (productExist(product)) {
      int idx = _carts.indexWhere((element) => element.product?.id == product.id);
      _carts[idx].qty = (_carts[idx].qty ?? 0) + 1;
    } else {
      _carts.add(CartModel(
        id: _carts.length,
        product: product,
        qty: 1,
      ));
    }

    notifyListeners();
  }

  removeCart(int id) {
    _carts.removeAt(id);
    notifyListeners();
  }

  addQuantity (int id) {
    _carts[id].qty = (_carts[id].qty ?? 0) + 1;
    notifyListeners();
  }

  reduceQuantity(int id) {
    _carts[id].qty = (_carts[id].qty ?? 0) - 1;
    if(_carts[id].qty == 0){
      _carts.removeAt(id);
    }
    notifyListeners();
  }

  totalItems() {
    int total = 0;
    for(var item in _carts) {
      total += item.qty!;
    }
    return total;
  }

  totalPrice() {
    double total = 0;
    for(var item in _carts) {
      total += (item.qty! * item.product!.price!);
    }
    return total;
  }

  productExist(ProductModel product) {
    if (_carts.indexWhere((element) => element.product?.id == product.id) == -1 ) {
      return false;
    } else {
      return true;
    }
  }
}
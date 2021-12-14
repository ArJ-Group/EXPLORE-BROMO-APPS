import 'package:flutter/material.dart';
import 'package:explore_bts/models/product_models.dart';
import 'package:explore_bts/services/product_service.dart';
import 'dart:core';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      List<ProductModel> products = await ProductService().getProducts();
      _products = products;
      print(products);
    } catch (e) {
      print(e);
    }
  }
}

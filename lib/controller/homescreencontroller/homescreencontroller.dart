import 'dart:convert';
import 'dart:developer';
import 'package:finalfakestorage/model/ProductModel/productmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HomeScreenController with ChangeNotifier {
  List<ProductResmodel> ProductList = [];
  Future getproducts() async {
    notifyListeners();

    final url = Uri.parse("https://fakestoreapi.com/products");

    final res = await http.get(url);

    if (res.statusCode == 200) {
      final decodedata = jsonDecode(res.body) as List;
      print(decodedata);
      ProductList = decodedata
          .map((Element) => ProductResmodel.fromJson(Element))
          .toList();
      log(ProductList.first.title.toString());
    } else {
      print("error");
    }
    notifyListeners();
  }
}
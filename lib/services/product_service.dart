import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/product.dart';

class ProductService {
  static Future<List<Product>> loadProducts() async {
    final String jsonString = await rootBundle.loadString(
      'assets/products.json',
    );
    final List<dynamic> jsonData = json.decode(jsonString);
     print(jsonData); 
    return jsonData.map((item) => Product.fromJson(item)).toList();
  }
}

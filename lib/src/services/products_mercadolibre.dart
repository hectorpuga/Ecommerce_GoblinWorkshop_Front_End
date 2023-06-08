import 'package:ecommerce/src/models/productos.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/result.dart';

class ProductosMercadoLibre extends ChangeNotifier {
  List<Result> productos = [];
  ProductosMercadoLibre() {
    getProductos();
  }
  getProductos() async {
    var url = Uri.parse(
        'https://api.mercadolibre.com/sites/MLA/search?q=navidad&limit=40&offset=1');
    var response = await http.get(url,
        headers: {"Authorization": "Qp3E0gE39U0U8ngIBNcaeR5vkHnkJMxv"});

    productos = Productos.fromRawJson(response.body).results;

    print(productos);

    notifyListeners();
  }
}

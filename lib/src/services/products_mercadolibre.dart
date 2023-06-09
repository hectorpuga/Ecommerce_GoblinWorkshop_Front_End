import 'dart:async';

import 'package:ecommerce/src/models/productos.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../helpers/debouncer.dart';
import '../models/result.dart';

// class ProductosMercadoLibre extends ChangeNotifier {
//   List<Result> productos = [];
//   ProductosMercadoLibre() {
//     getProductos();
//   }
//   getProductos() async {
//     var url = Uri.parse(
//         'https://api.mercadolibre.com/sites/MLA/search?q=navidad&limit=16&offset=1');
//     var response = await http.get(url,
//         headers: {"Authorization": "Qp3E0gE39U0U8ngIBNcaeR5vkHnkJMxv"});

//     productos = Productos.fromRawJson(response.body).results;

//     notifyListeners();
//   }
// }

class ProductosMercadoLibre extends ChangeNotifier {
  List<Result> productos = [];
  List<Result> productosBuscados = [];

  ProductosMercadoLibre() {
    getProductos();
  }

  final debouncer = Debouncer(
    duration: const Duration(milliseconds: 500),
  );

  final StreamController<List<Result>> _suggestionsStreamController =
      StreamController.broadcast();

  Stream<List<Result>>? get suggestionStream =>
      _suggestionsStreamController.stream;

  Future<List<Result>> searchCiudad(String query) async {
    var url = Uri.parse(
        'https://api.mercadolibre.com/sites/MLA/search?q=$query&limit=16&offset=1');
    var response = await http.get(url,
        headers: {"Authorization": "Qp3E0gE39U0U8ngIBNcaeR5vkHnkJMxv"});

    final productosBuscados = Productos.fromRawJson(response.body).results;

    return productosBuscados;
  }

  void getSuggestionsByQuery(String searchTerm) {
    debouncer.value = '';
    debouncer.onValue = (value) async {
      final results = await searchCiudad(value);
      productosBuscados = results;
      _suggestionsStreamController.add(results);
    };

    final timer = Timer.periodic(const Duration(milliseconds: 300), (_) {
      debouncer.value = searchTerm;
    });

    Future.delayed(const Duration(milliseconds: 301))
        .then((value) => timer.cancel());
  }

  getProductos() async {
    var url = Uri.parse(
        'https://api.mercadolibre.com/sites/MLA/search?q=navidad&limit=24&offset=1');
    var response = await http.get(url,
        headers: {"Authorization": "Qp3E0gE39U0U8ngIBNcaeR5vkHnkJMxv"});

    productos = Productos.fromRawJson(response.body).results;

    notifyListeners();
  }

  getAct() {
    notifyListeners();
  }
}

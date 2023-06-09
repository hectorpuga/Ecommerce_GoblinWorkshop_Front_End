import 'package:flutter/material.dart';

import '../models/result.dart';

class ProductsProvider extends ChangeNotifier {
  final List<Result> _productsFavorite = [];
  final List<Result> _carrito = [];

  carritoAdd(Result producto) {
    _carrito.add(producto);
    notifyListeners();
  }

  isCarrito(Result producto) => _carrito.contains(producto);

  getCarrito() => _carrito;

  carritoRemove(Result producto) {
    _carrito.remove(producto);
    notifyListeners();
  }

  favoriteAdd(Result producto) {
    _productsFavorite.add(producto);
    notifyListeners();
  }

  isFavorite(Result producto) => _productsFavorite.contains(producto);

  getFavorites() => _productsFavorite;

  favoriteRemove(Result producto) {
    _productsFavorite.remove(producto);
    notifyListeners();
  }
}

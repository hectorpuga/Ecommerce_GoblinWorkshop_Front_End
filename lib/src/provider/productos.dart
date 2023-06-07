import 'package:ecommerce/src/models/productos.dart';
import 'package:http/http.dart' as http;

class ProductosProvider {
  static getProductos() async {
    var url = Uri.parse(
        'https://api.mercadolibre.com/sites/MLA/search?q=navidad&limit=1');
    var response = await http.get(url,
        headers: {"Authorization": "Qp3E0gE39U0U8ngIBNcaeR5vkHnkJMxv"});

    final datos = Productos.fromRawJson(response.body);

    print(datos.results[0].title);
  }
}

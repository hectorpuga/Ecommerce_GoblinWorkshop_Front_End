import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/result.dart';
import '../services/products_mercadolibre.dart';

class LugaresSearch extends SearchDelegate {
  @override
  String? get searchFieldLabel => "Buscar Lugar";

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () => query = "")];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final productos =
        Provider.of<ProductosMercadoLibre>(context, listen: false);
    return ListView(
      children: [
        for (int i = 0; i < productos.productos.length; i++)
          ListTile(
            leading: const Icon(Icons.location_pin),
            title: Text(
              productos.productos[i].title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            // subtitle: Text(productos.ciudades[i].placeName

            // ),
          ),
      ],
    );
  }

  Widget _emptyContainer() {
    return const Center(
      child: Icon(
        Icons.eco_outlined,
        size: 130,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return _emptyContainer();
    }
    final ciudades = Provider.of<ProductosMercadoLibre>(context, listen: false);
    ciudades.getSuggestionsByQuery(query);
    return StreamBuilder(
      stream: ciudades.suggestionStream,
      builder: (_, AsyncSnapshot<List<Result>> snapshot) {
        if (!snapshot.hasData) {
          return _emptyContainer();
        }

        final ciudad = snapshot.data;
        return ListView.builder(
          itemCount: ciudad!.length,
          itemBuilder: (_, index) => CiudadItem(producto: ciudad[index]),
        );
      },
    );
  }
}

class CiudadItem extends StatelessWidget {
  final Result producto;
  const CiudadItem({Key? key, required this.producto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.search),
          title: Text(
            producto.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),

          trailing: Image.network(producto.thumbnail),
          // subtitle: Text(ciudad.placeName),
        ),
        Divider()
      ],
    );
  }
}

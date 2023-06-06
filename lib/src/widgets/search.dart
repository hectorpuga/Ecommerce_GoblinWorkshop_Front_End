import 'package:flutter/material.dart';

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
    return Center(
      child: Text("HOla"),
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
    return Center(
      child: Text("HOla"),
    );
  }
}

class CiudadItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("HOla"),
    );
  }
}

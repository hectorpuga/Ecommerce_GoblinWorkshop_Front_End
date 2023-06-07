import 'package:flutter/material.dart';

class LugaresSearch extends SearchDelegate {
  @override
  String? get searchFieldLabel => "Buscar Lugar";

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(icon: const Icon(Icons.clear), onPressed: () => query = "")
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center(
      child: Text("HOla"),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(
      child: Text("HOla"),
    );
  }
}

// To parse this JSON data, do
//
//     final productos = productosFromJson(jsonString);

import 'dart:convert';

import 'package:ecommerce/src/models/result.dart';

class Productos {
  List<Result> results;
  Productos({
    required this.results,
  });

  factory Productos.fromRawJson(String str) =>
      Productos.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Productos.fromJson(Map<String, dynamic> json) => Productos(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

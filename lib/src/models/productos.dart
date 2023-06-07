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

class Address {
  String stateId;
  String stateName;
  String cityId;
  String cityName;

  Address({
    required this.stateId,
    required this.stateName,
    required this.cityId,
    required this.cityName,
  });

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        stateId: json["state_id"],
        stateName: json["state_name"],
        cityId: json["city_id"],
        cityName: json["city_name"],
      );

  Map<String, dynamic> toJson() => {
        "state_id": stateId,
        "state_name": stateName,
        "city_id": cityId,
        "city_name": cityName,
      };
}

class Attribute {
  String id;
  String name;
  String? valueId;
  String valueName;
  String attributeGroupId;
  String attributeGroupName;

  int source;
  String valueType;

  Attribute({
    required this.id,
    required this.name,
    this.valueId,
    required this.valueName,
    required this.attributeGroupId,
    required this.attributeGroupName,
    required this.source,
    required this.valueType,
  });

  factory Attribute.fromRawJson(String str) =>
      Attribute.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        id: json["id"],
        name: json["name"],
        valueId: json["value_id"],
        valueName: json["value_name"],
        attributeGroupId: json["attribute_group_id"],
        attributeGroupName: json["attribute_group_name"],
        source: json["source"],
        valueType: json["value_type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "value_id": valueId,
        "value_name": valueName,
        "attribute_group_id": attributeGroupId,
        "attribute_group_name": attributeGroupName,
        "source": source,
        "value_type": valueType,
      };
}

class Installments {
  int quantity;
  double amount;
  double rate;
  String currencyId;

  Installments({
    required this.quantity,
    required this.amount,
    required this.rate,
    required this.currencyId,
  });

  factory Installments.fromRawJson(String str) =>
      Installments.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Installments.fromJson(Map<String, dynamic> json) => Installments(
        quantity: json["quantity"],
        amount: json["amount"]?.toDouble(),
        rate: json["rate"]?.toDouble(),
        currencyId: json["currency_id"],
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "amount": amount,
        "rate": rate,
        "currency_id": currencyId,
      };
}

class Seller {
  int id;
  String nickname;
  bool carDealer;
  bool realEstateAgency;
  bool empty;
  DateTime registrationDate;
  List<String> tags;
  String carDealerLogo;
  String permalink;

  Seller({
    required this.id,
    required this.nickname,
    required this.carDealer,
    required this.realEstateAgency,
    required this.empty,
    required this.registrationDate,
    required this.tags,
    required this.carDealerLogo,
    required this.permalink,
  });

  factory Seller.fromRawJson(String str) => Seller.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Seller.fromJson(Map<String, dynamic> json) => Seller(
        id: json["id"],
        nickname: json["nickname"],
        carDealer: json["car_dealer"],
        realEstateAgency: json["real_estate_agency"],
        empty: json["_"],
        registrationDate: DateTime.parse(json["registration_date"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
        carDealerLogo: json["car_dealer_logo"],
        permalink: json["permalink"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nickname": nickname,
        "car_dealer": carDealer,
        "real_estate_agency": realEstateAgency,
        "_": empty,
        "registration_date": registrationDate.toIso8601String(),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "car_dealer_logo": carDealerLogo,
        "permalink": permalink,
      };
}

class SellerAddress {
  String comment;
  String addressLine;
  dynamic id;
  dynamic latitude;
  dynamic longitude;

  SellerAddress({
    required this.comment,
    required this.addressLine,
    this.id,
    this.latitude,
    this.longitude,
  });

  factory SellerAddress.fromRawJson(String str) =>
      SellerAddress.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SellerAddress.fromJson(Map<String, dynamic> json) => SellerAddress(
        comment: json["comment"],
        addressLine: json["address_line"],
        id: json["id"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "comment": comment,
        "address_line": addressLine,
        "id": id,
        "latitude": latitude,
        "longitude": longitude,
      };
}

class Shipping {
  bool storePickUp;
  bool freeShipping;
  String logisticType;
  String mode;
  List<String> tags;
  dynamic promise;

  Shipping({
    required this.storePickUp,
    required this.freeShipping,
    required this.logisticType,
    required this.mode,
    required this.tags,
    this.promise,
  });

  factory Shipping.fromRawJson(String str) =>
      Shipping.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Shipping.fromJson(Map<String, dynamic> json) => Shipping(
        storePickUp: json["store_pick_up"],
        freeShipping: json["free_shipping"],
        logisticType: json["logistic_type"],
        mode: json["mode"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        promise: json["promise"],
      );

  Map<String, dynamic> toJson() => {
        "store_pick_up": storePickUp,
        "free_shipping": freeShipping,
        "logistic_type": logisticType,
        "mode": mode,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "promise": promise,
      };
}

class VariationsDatum {
  String thumbnail;
  String ratio;
  String name;
  int picturesQty;
  String inventoryId;

  VariationsDatum({
    required this.thumbnail,
    required this.ratio,
    required this.name,
    required this.picturesQty,
    required this.inventoryId,
  });

  factory VariationsDatum.fromRawJson(String str) =>
      VariationsDatum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VariationsDatum.fromJson(Map<String, dynamic> json) =>
      VariationsDatum(
        thumbnail: json["thumbnail"],
        ratio: json["ratio"],
        name: json["name"],
        picturesQty: json["pictures_qty"],
        inventoryId: json["inventory_id"],
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail,
        "ratio": ratio,
        "name": name,
        "pictures_qty": picturesQty,
        "inventory_id": inventoryId,
      };
}

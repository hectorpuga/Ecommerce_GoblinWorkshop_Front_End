import 'dart:convert';

class Result {
  String id;
  String title;
  String condition;
  String thumbnailId;
  dynamic catalogProductId;
  String listingTypeId;
  String permalink;
  String buyingMode;
  String siteId;
  String categoryId;
  String domainId;
  String thumbnail;
  String currencyId;
  int orderBackend;
  dynamic price;
  dynamic salePrice;
  int soldQuantity;
  int availableQuantity;
  int? officialStoreId;
  bool? useThumbnailId;
  bool acceptsMercadopago;
  Map<String, VariationsDatum>? variationsData;

  Result({
    required this.id,
    required this.title,
    required this.condition,
    required this.thumbnailId,
    this.catalogProductId,
    this.variationsData,
    required this.listingTypeId,
    required this.permalink,
    required this.buyingMode,
    required this.siteId,
    required this.categoryId,
    required this.domainId,
    required this.thumbnail,
    required this.currencyId,
    required this.orderBackend,
    required this.price,
    this.salePrice,
    required this.soldQuantity,
    required this.availableQuantity,
    this.officialStoreId,
    this.useThumbnailId,
    required this.acceptsMercadopago,
  });

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        title: json["title"],
        condition: json["condition"],
        thumbnailId: json["thumbnail_id"],
        catalogProductId: json["catalog_product_id"],
        listingTypeId: json["listing_type_id"],
        permalink: json["permalink"],
        buyingMode: json["buying_mode"],
        siteId: json["site_id"],
        categoryId: json["category_id"],
        domainId: json["domain_id"],
        thumbnail: json["thumbnail"],
        currencyId: json["currency_id"],
        orderBackend: json["order_backend"],
        price: json["price"],
        salePrice: json["sale_price"],
        soldQuantity: json["sold_quantity"],
        availableQuantity: json["available_quantity"],
        officialStoreId: json["official_store_id"],
        useThumbnailId: json["use_thumbnail_id"],
        acceptsMercadopago: json["accepts_mercadopago"],
        variationsData: Map.from(json["variations_data"] ?? {}).map((k, v) =>
            MapEntry<String, VariationsDatum>(k, VariationsDatum.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "condition": condition,
        "thumbnail_id": thumbnailId,
        "catalog_product_id": catalogProductId,
        "listing_type_id": listingTypeId,
        "permalink": permalink,
        "buying_mode": buyingMode,
        "site_id": siteId,
        "category_id": categoryId,
        "domain_id": domainId,
        "thumbnail": thumbnail,
        "currency_id": currencyId,
        "order_backend": orderBackend,
        "price": price,
        "sale_price": salePrice,
        "sold_quantity": soldQuantity,
        "available_quantity": availableQuantity,
        "official_store_id": officialStoreId,
        "use_thumbnail_id": useThumbnailId,
        "accepts_mercadopago": acceptsMercadopago,
        "variations_data": Map.from(variationsData!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class VariationsDatum {
  String thumbnail;
  String? ratio;
  String? name;
  int? picturesQty;
  String? inventoryId;

  VariationsDatum({
    required this.thumbnail,
    this.ratio,
    this.name,
    this.picturesQty,
    this.inventoryId,
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

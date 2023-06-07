import 'dart:convert';

import 'package:ecommerce/src/models/productos.dart';

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
  int price;
  int originalPrice;
  dynamic salePrice;
  int soldQuantity;
  int availableQuantity;
  int officialStoreId;
  String officialStoreName;
  bool useThumbnailId;
  bool acceptsMercadopago;
  List<String> tags;
  List<String> variationFilters;
  Shipping shipping;
  DateTime stopTime;
  Seller seller;
  SellerAddress sellerAddress;
  Address address;
  List<Attribute> attributes;
  Map<String, VariationsDatum> variationsData;
  Installments installments;
  dynamic winnerItemId;
  dynamic discounts;
  List<dynamic> promotions;
  dynamic inventoryId;

  Result({
    required this.id,
    required this.title,
    required this.condition,
    required this.thumbnailId,
    this.catalogProductId,
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
    required this.originalPrice,
    this.salePrice,
    required this.soldQuantity,
    required this.availableQuantity,
    required this.officialStoreId,
    required this.officialStoreName,
    required this.useThumbnailId,
    required this.acceptsMercadopago,
    required this.tags,
    required this.variationFilters,
    required this.shipping,
    required this.stopTime,
    required this.seller,
    required this.sellerAddress,
    required this.address,
    required this.attributes,
    required this.variationsData,
    required this.installments,
    this.winnerItemId,
    this.discounts,
    required this.promotions,
    this.inventoryId,
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
        originalPrice: json["original_price"],
        salePrice: json["sale_price"],
        soldQuantity: json["sold_quantity"],
        availableQuantity: json["available_quantity"],
        officialStoreId: json["official_store_id"],
        officialStoreName: json["official_store_name"],
        useThumbnailId: json["use_thumbnail_id"],
        acceptsMercadopago: json["accepts_mercadopago"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        variationFilters:
            List<String>.from(json["variation_filters"].map((x) => x)),
        shipping: Shipping.fromJson(json["shipping"]),
        stopTime: DateTime.parse(json["stop_time"]),
        seller: Seller.fromJson(json["seller"]),
        sellerAddress: SellerAddress.fromJson(json["seller_address"]),
        address: Address.fromJson(json["address"]),
        attributes: List<Attribute>.from(
            json["attributes"].map((x) => Attribute.fromJson(x))),
        variationsData: Map.from(json["variations_data"]).map((k, v) =>
            MapEntry<String, VariationsDatum>(k, VariationsDatum.fromJson(v))),
        installments: Installments.fromJson(json["installments"]),
        winnerItemId: json["winner_item_id"],
        discounts: json["discounts"],
        promotions: List<dynamic>.from(json["promotions"].map((x) => x)),
        inventoryId: json["inventory_id"],
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
        "original_price": originalPrice,
        "sale_price": salePrice,
        "sold_quantity": soldQuantity,
        "available_quantity": availableQuantity,
        "official_store_id": officialStoreId,
        "official_store_name": officialStoreName,
        "use_thumbnail_id": useThumbnailId,
        "accepts_mercadopago": acceptsMercadopago,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "variation_filters": List<dynamic>.from(variationFilters.map((x) => x)),
        "shipping": shipping.toJson(),
        "stop_time": stopTime.toIso8601String(),
        "seller": seller.toJson(),
        "seller_address": sellerAddress.toJson(),
        "address": address.toJson(),
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
        "variations_data": Map.from(variationsData)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "installments": installments.toJson(),
        "winner_item_id": winnerItemId,
        "discounts": discounts,
        "promotions": List<dynamic>.from(promotions.map((x) => x)),
        "inventory_id": inventoryId,
      };
}

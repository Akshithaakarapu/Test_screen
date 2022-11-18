// To parse this JSON data, do
//
//     final productDetailsAip = productDetailsAipFromJson(jsonString);

import 'dart:convert';

ProductDetailsAip productDetailsAipFromJson(String str) =>
    ProductDetailsAip.fromJson(json.decode(str));

String productDetailsAipToJson(ProductDetailsAip data) =>
    json.encode(data.toJson());

class ProductDetailsAip {
  ProductDetailsAip({
    this.productId,
    this.productName,
    this.description,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  int? productId;
  String? productName;
  String? description;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory ProductDetailsAip.fromJson(Map<String, dynamic> json) =>
      ProductDetailsAip(
        productId: json["product_id"] == null ? null : json["product_id"],
        productName: json["product_name"] == null ? null : json["product_name"],
        description: json["description"] == null ? null : json["description"],
        image: json["image"] == null ? null : json["image"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId == null ? null : productId,
        "product_name": productName == null ? null : productName,
        "description": description == null ? null : description,
        "image": image == null ? null : image,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
      };
}
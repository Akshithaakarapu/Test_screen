// To parse this JSON data, do
//
//     final productList = productListFromJson(jsonString);

import 'dart:convert';

ProductList productListFromJson(String str) => ProductList.fromJson(json.decode(str));

String productListToJson(ProductList data) => json.encode(data.toJson());

class ProductList {
    ProductList({
        this.products,
        this.page,
        this.limit,
        this.searchText,
        this.total,
    });

    List<Product>? products;
    int? page;
    int? limit;
    dynamic searchText;
    int? total;

    factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
        products: json["products"] == null ? null : List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        page: json["page"] == null ? null : json["page"],
        limit: json["limit"] == null ? null : json["limit"],
        searchText: json["search_text"],
        total: json["total"] == null ? null : json["total"],
    );

    Map<String, dynamic> toJson() => {
        "products": products == null ? null : List<dynamic>.from(products!.map((x) => x.toJson())),
        "page": page == null ? null : page,
        "limit": limit == null ? null : limit,
        "search_text": searchText,
        "total": total == null ? null : total,
    };
}

class Product{
    Product({
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

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["product_id"] == null ? null : json["product_id"],
        productName: json["product_name"] == null ? null : json["product_name"],
        description: json["description"] == null ? null : json["description"],
        image: json["image"] == null ? null : json["image"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
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

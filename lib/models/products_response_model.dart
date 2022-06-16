import 'dart:convert';

import 'categories_response_model.dart';

ProductResponseModel productsResponseJson(String str) =>
    ProductResponseModel.fromJson(json.decode(str));

class ProductResponseModel {
  ProductResponseModel({
    required this.message,
    required this.data,
  });
  late final String message;
  late final Data data;

  ProductResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.count,
    required this.products,
  });
  late final int count;
  late final List<Product> products;

  Data.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    products =
        List.from(json['products']).map((e) => Product.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['products'] = products.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Product {
  Product({
    required this.id,
    required this.quantity,
    required this.unitWeight,
    required this.unitPrice,
    this.description,
    required this.images,
    required this.createdAt,
    required this.updatedAt,
    required this.sellerId,
    required this.category,
    this.subCategory,
  });
  late final int id;
  late final int quantity;
  late final String unitWeight;
  late final int unitPrice;
  late final String? description;
  late final List<String> images;
  late final String createdAt;
  late final String updatedAt;
  late final int sellerId;
  late final Category category;
  late final SubCategory? subCategory;

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    unitWeight = json['unitWeight'];
    unitPrice = json['unitPrice'];
    description = null;
    images = List.castFrom<dynamic, String>(json['images']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    sellerId = json['sellerId'];
    category = Category.fromJson(json['category']);
    subCategory = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['quantity'] = quantity;
    _data['unitWeight'] = unitWeight;
    _data['unitPrice'] = unitPrice;
    _data['description'] = description;
    _data['images'] = images;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['sellerId'] = sellerId;
    _data['category'] = category.toJson();
    _data['subCategory'] = subCategory;
    return _data;
  }
}

class SubCategory {
  SubCategory({
    required this.name,
  });
  late final String name;

  SubCategory.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    return _data;
  }
}

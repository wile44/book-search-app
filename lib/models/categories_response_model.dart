import 'dart:convert';

CategoryResponseModel categoriesResponseJson(String str) =>
    CategoryResponseModel.fromJson(json.decode(str));

class CategoryResponseModel {
  CategoryResponseModel({
    required this.message,
    required this.data,
  });
  late final String message;
  late final Data data;

  CategoryResponseModel.fromJson(Map<String, dynamic> json) {
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
    required this.categories,
  });
  late final int count;
  late final List<Category> categories;

  Data.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    categories =
        List.from(json['categories']).map((e) => Category.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['categories'] = categories.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Category {
  Category({
    required this.name,
    required this.subCategories,
  });
  late final String name;
  late final List<SubCategory>? subCategories;

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    subCategories = json['subCategories'] == null
        ? null
        : List.from(json['subCategories'])
            .map((e) => SubCategory.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['subCategories'] = subCategories?.map((e) => e.toJson()).toList();
    return _data;
  }
}

class SubCategory {
  SubCategory({
    required this.name,
    required this.categoryName,
  });
  late final String name;
  late final String categoryName;

  SubCategory.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    categoryName = json['categoryName'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['categoryName'] = categoryName;
    return _data;
  }
}

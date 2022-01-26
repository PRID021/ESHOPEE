import 'package:eshopee/app/data/models/base_model.dart';

class Product extends BaseModel {
  final String name;
  final double? stars;
  final int? numReviews;
  final double? saleRate;
  final List<String> colors;
  final List<int> ramCapacity;
  final List<int> storageCapacity;
  final String sku;
  final int categoryNumber;
  final List<String> tags;
  final List<String> images;

  Product({
    id,
    required this.name,
    this.stars,
    this.numReviews,
    this.saleRate,
    required this.colors,
    required this.ramCapacity,
    required this.storageCapacity,
    required this.sku,
    required this.categoryNumber,
    required this.tags,
    required this.images,
  }) : super(id);
  @override
  Map<String, dynamic> toJson() {
    return Map<String, dynamic>.from({
      'id': id,
      'name': name,
      'stars': stars,
      'numReviews': numReviews,
      'saleRate': saleRate,
      'colors': colors,
      'ramCapacity': ramCapacity,
      'storageCapacity': storageCapacity,
      'sku': sku,
      'categoryNumber': categoryNumber,
      'tags': tags,
      'images': images,
    });
  }

  Product.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        stars = json['stars'],
        numReviews = json['numReviews'],
        saleRate = json['saleRate'],
        colors = json['colors'].cast<String>(),
        ramCapacity = json['ramCapacity'].cast<int>(),
        storageCapacity = json['storageCapacity'].cast<int>(),
        sku = json['sku'],
        categoryNumber = json['categoryNumber'],
        tags = json['tags'].cast<String>(),
        images = json['images'].cast<String>(),
        super(json['id']);
}

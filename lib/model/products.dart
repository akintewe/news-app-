class ClassName {
  final int id;
  final String brand;
  final String name;
  final String price;
  final dynamic priceSign;
  final dynamic currency;
  final String imageLink;
  final String productLink;
  final String websiteLink;
  final String description;
  final int rating;
  final dynamic category;
  final String productType;
  final List<dynamic> tagList;
  final String createdAt;
  final String updatedAt;
  final String productApiUrl;
  final String apiFeaturedImage;
  final List<dynamic> productColors;

  ClassName({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    this.priceSign,
    this.currency,
    required this.imageLink,
    required this.productLink,
    required this.websiteLink,
    required this.description,
    required this.rating,
    required this.category,
    required this.productType,
    required this.tagList,
    required this.createdAt,
    required this.updatedAt,
    required this.productApiUrl,
    required this.apiFeaturedImage,
    required this.productColors,
  });

  ClassName.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        brand = json['brand'] as String,
        name = json['name'] as String,
        price = json['price'] as String,
        priceSign = json['price_sign'],
        currency = json['currency'],
        imageLink = json['image_link'] as String,
        productLink = json['product_link'] as String,
        websiteLink = json['website_link'] as String,
        description = json['description'] as String,
        rating = json['rating'] as int,
        category = json['category'],
        productType = json['product_type'] as String,
        tagList = json['tag_list'] as List,
        createdAt = json['created_at'] as String,
        updatedAt = json['updated_at'] as String,
        productApiUrl = json['product_api_url'] as String,
        apiFeaturedImage = json['api_featured_image'] as String,
        productColors = json['product_colors'] as List;

  Map<String, dynamic> toJson() => {
        'id': id,
        'brand': brand,
        'name': name,
        'price': price,
        'price_sign': priceSign,
        'currency': currency,
        'image_link': imageLink,
        'product_link': productLink,
        'website_link': websiteLink,
        'description': description,
        'rating': rating,
        'category': category,
        'product_type': productType,
        'tag_list': tagList,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'product_api_url': productApiUrl,
        'api_featured_image': apiFeaturedImage,
        'product_colors': productColors
      };
}

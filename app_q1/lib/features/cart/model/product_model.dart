class ProductModel {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final int rating;
  final int reviews;
  final String weight;

  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
    required this.weight,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        name: json["name"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        imageUrl: json["imageUrl"],
        rating: json["rating"],
        reviews: json["reviews"],
        weight: json["weight"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "price": price,
        "imageUrl": imageUrl,
        "rating": rating,
        "reviews": reviews,
        "weight": weight,
      };
}

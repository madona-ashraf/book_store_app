class BookModel {
  final String id;
  final String title;
  final String image;
  final double price;

  BookModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  });

  // تحويل من JSON
  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      image: json['image'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
    );
  }

  // تحويل إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'price': price,
    };
  }
}

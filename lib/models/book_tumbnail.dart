class BookThumbnail {
  String title;
  String subtitle;
  String isbn13;
  String price;
  String image;
  String url;

  BookThumbnail({
    required this.title,
    required this.subtitle,
    required this.isbn13,
    required this.price,
    required this.image,
    required this.url,
  });

  factory BookThumbnail.fromJson(Map<String, dynamic> json) => BookThumbnail(
        title: json["title"],
        subtitle: json["subtitle"],
        isbn13: json["isbn13"],
        price: json["price"],
        image: json["image"],
        url: json["url"],
      );
}

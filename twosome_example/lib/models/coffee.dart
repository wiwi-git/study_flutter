import 'dart:convert';

class Coffee {
  final String id;
  final String title;
  final String price;
  final String imageUrl;
  final String imageUrl2;

  Coffee({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.imageUrl2,
  });

  Coffee copyWith({
    String? id,
    String? title,
    String? price,
    String? imageUrl,
    String? imageUrl2,
  }) {
    return Coffee(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      imageUrl2: imageUrl2 ?? this.imageUrl2,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'price': price,
      'imageUrl': imageUrl,
      'imageUrl2': imageUrl2,
    };
  }

  factory Coffee.fromMap(Map<String, dynamic> map) {
    return Coffee(
      id: map['id'] as String,
      title: map['title'] as String,
      price: map['price'] as String,
      imageUrl: map['imageUrl'] as String,
      imageUrl2: map['imageUrl2'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Coffee.fromJson(String source) =>
      Coffee.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Coffee(id: $id, title: $title, price: $price, imageUrl: $imageUrl, imageUrl2: $imageUrl2)';
  }

  @override
  bool operator ==(covariant Coffee other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.price == price &&
        other.imageUrl == imageUrl &&
        other.imageUrl2 == imageUrl2;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        price.hashCode ^
        imageUrl.hashCode ^
        imageUrl2.hashCode;
  }
}

List<Coffee> coffees = [
  Coffee(
    id: '01',
    title: '(1호점)신촌커피',
    price: '6100',
    imageUrl: 'assets/images/coffee01.jpg',
    imageUrl2: 'assets/images/coffee01_ice.jpg',
  ),
  Coffee(
    id: '02',
    title: '아메리카노',
    price: '4500',
    imageUrl: 'assets/images/coffee02.jpg',
    imageUrl2: 'assets/images/coffee02_ice.jpg',
  ),
  Coffee(
    id: '03',
    title: '카페라떼',
    price: '5000',
    imageUrl: 'assets/images/coffee03.jpg',
    imageUrl2: 'assets/images/coffee03_ice.png',
  ),
  Coffee(
    id: '04',
    title: '바닐라카페라떼',
    price: '5500',
    imageUrl: 'assets/images/coffee04.png',
    imageUrl2: 'assets/images/coffee04_ice.png',
  ),
];

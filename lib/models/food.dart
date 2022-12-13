import 'package:flutter/foundation.dart';

class Food {
  final String id;
  final String title;
  final String description;
  final String price;
  final String imgUrl;
  bool is_favourite;

  Food({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imgUrl,
    this.is_favourite = false,
  });
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class CatalogModel {
static final products = [
  Item(
    id: "Ansh001",
    name: "USB Cable",
    desc: "4 in 1 USB cable",
    price: 399,
    color: Colors.red,
    image: "https://m.media-amazon.com/images/I/61EhDIFSZIL._SL1024_.jpg",
  ),
  Item(
    id: "Ansh002",
    name: "HP Victus Laptop",
    desc: "HP Smartchoice Victus, AMD Ryzen 7 7445HS, 6GB RTX 3050, 16GB DDR5(Upgradeable) 512GB SSD, FHD, 144Hz, 300 nits",
    price: 1599,
    color: Colors.red,
    image: "https://m.media-amazon.com/images/I/71o5eHSQiKL._SX679_.jpg",
  ),
  Item(
    id: "Ansh003",
    name: "One Plus Phone",
    desc: "OnePlus Nord CE6 Lite | 8GB+128GB | Hyper Black | Segment's Fastest Dimensity 7400 Apex Processor | 7000mAh Battery, FHD, 144Hz, 300 nits",
    price: 999,
    color: Colors.red,
    image: "https://m.media-amazon.com/images/I/414g4kBKDYL._SY300_SX300_QL70_FMwebp_.jpg",
  ),
];
}



class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final Color color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
  

  

  Item copyWith({
    String? id,
    String? name,
    String? desc,
    num? price,
    Color? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color.value,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: Color(map['color'] as int),
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
}


class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(
    id: "Ansh001",
    name: "USB Cable",
    desc: "4 in 1 USB cable",
    price: 399,
    color: "Red",
    image: "https://m.media-amazon.com/images/I/61EhDIFSZIL._SL1024_.jpg",
  )
];
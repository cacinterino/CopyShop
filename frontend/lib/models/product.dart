class Product {
  final String name;
  final String image;
  final double price;
  final double discount;
  final int sold;
  final String category;

  Product ({
    required this.name,
    required this.image,
    required this.price,
    required this.discount,
    required this.sold,
    required this.category,
});
}

final products = [
  Product(
    name: "Lovito Cute Bow Summer Dress",
    image: "assets/DressLovito.jpg", // replace with assets later
    price: 336,
    discount: 10,
    sold: 686,
    category: "Shirts",
  ),
  Product(
    name: "Zendaya Halter Jacket",
    image: "https://via.placeholder.com/300x400",
    price: 189,
    discount: 20,
    sold: 36800,
    category: "Jackets",
  ),
];


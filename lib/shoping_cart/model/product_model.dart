

class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({required this.price,required this.name,required this.imageUrl});

  static  List <Product> products = [
     Product(name:"cafe",price: 2.5, imageUrl: "https://previews.123rf.com/images/serezniy/serezniy2103/serezniy210370455/166269068-cup-of-hot-coffee-on-wooden-table.jpg"),
    Product(name:"apple",price: 4.5, imageUrl: "https://previews.123rf.com/images/zhukovsky/zhukovsky2110/zhukovsky211000064/175283816-red-yellow-and-green-apples.jpg"),
    Product(name:"bescuit",price: 3.5, imageUrl: "https://previews.123rf.com/images/mackoflower/mackoflower2102/mackoflower210200057/163443355-sausage-egg-and-cheese-biscuit-breakfast-sandwich-with-glass-of-milk.jpg"),
  ];
}
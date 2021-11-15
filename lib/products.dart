class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String Image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.Image});
}

final products =[Item(
  id: "Product 1",
  name: "Iphone 13 pro Max",
  desc: "You already know what it is",
  price: 10,
  color: "#33505a",
  Image: "https://images.pexels.com/photos/4673285/pexels-photo-4673285.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
)];
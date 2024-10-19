class Items {
  final String id;
  final String name;
  final String descr;
  final double price;
  final String color;
  final String image;

//Constructor

  Items({
    required this.id,
    required this.name,
    required this.descr,
    required this.price,
    required this.color,
    required this.image,
  });
}

class Catalog {
  static final products = [
    Items(
        id: "CodePur001",
        name: "iPhone 6 Pro Max",
        descr: "12th generation",
        price: 999,
        color: "#335053",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1yY8FzgO2FFlgwANM3CP6N-zZxUJp_OyTTw&s0")
  ];
}

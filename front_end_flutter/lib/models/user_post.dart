class Post {
  final String id;
  final String city;
  final String subcity;
  final String street;
  final String price;
  final String description;
  final String phone;
  final String email;
  final String houseImage;
  // final DateTime date;

  Post({
    required this.id,
    required this.city,
    required this.subcity,
    required this.street,
    required this.price,
    required this.description,
    required this.phone,
    required this.email,
    required this.houseImage,
    // required this.date,
  });
}

List<Post> userPosts = <Post>[
  Post(
    id: "1",
    city: "Addis Ababa",
    subcity: "Arada",
    street: "6 Kilo",
    price: "4500",
    description: "Large room with 2 bed room and suitable and clean kitchen.",
    phone: "+12512233456",
    email: "name@gmail.com",
    houseImage: "assets/images/houseImage/house1.jpg",
  ),
  Post(
    id: "2",
    city: "Addis Ababa",
    subcity: "Kirkos",
    street: "kirkos",
    price: "6000",
    description: "Large room with 2 bed room and suitable and clean kitchen.",
    phone: "+12512233456",
    email: "name@gmail.com",
    houseImage: "assets/images/houseImage/house2.jpg",
  ),
  Post(
    id: "3",
    city: "Addis Ababa",
    subcity: "Betel",
    street: "Weira",
    price: "5000",
    description: "Large room with 2 bed room and suitable and clean kitchen.",
    phone: "+12512233456",
    email: "name@gmail.com",
    houseImage: "assets/images/houseImage/house3.jpg",
  ),
  Post(
    id: "4",
    city: "Addis Ababa",
    subcity: "Gulele",
    street: "Addisu Gebeya",
    price: "9000",
    description: "Large room with 2 bed room and suitable and clean kitchen.",
    phone: "+12512233456",
    email: "name@gmail.com",
    houseImage: "assets/images/houseImage/house4.jpg",
  ),
  Post(
    id: "5",
    city: "Addis Ababa",
    subcity: "Bole",
    street: "Bulbula",
    price: "11000",
    description: "Large room with 2 bed room and suitable and clean kitchen.",
    phone: "+12512233456",
    email: "name@gmail.com",
    houseImage: "assets/images/houseImage/house5.jpg",
  ),
  Post(
    id: "6",
    city: "Addis Ababa",
    subcity: "Lafto",
    street: "Gemo",
    price: "8000",
    description: "Large room with 2 bed room and suitable and clean kitchen.",
    phone: "+12512233456",
    email: "name@gmail.com",
    houseImage: "assets/images/houseImage/house6.jpg",
  ),
  Post(
    id: "7",
    city: "Addis Ababa",
    subcity: "Kaliti",
    street: "Kilinto",
    price: "6500",
    description: "Large room with 2 bed room and suitable and clean kitchen.",
    phone: "+12512233456",
    email: "name@gmail.com",
    houseImage: "assets/images/houseImage/house7.jpg",
  ),
];

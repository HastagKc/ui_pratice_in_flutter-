class FruitData {
  String imgUrl;
  String name;
  double price;
  String discription;

  FruitData({
    required this.imgUrl,
    required this.name,
    required this.price,
    required this.discription,
  });
}

List<FruitData> fruits = [
  FruitData(
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXOjQBFZOmsu56tZ42_bQGA01bhoth7pUNUA&usqp=CAU',
    name: 'Apple',
    price: 60.0,
    discription:
        'Apple Inc. (formerly Apple Computer Inc.) is an American computer and consumer electronics company famous for creating the iPhone, iPad and Macintosh computers. Apple is one of the largest companies globally with a market cap of over 2 trillion dollars',
  ),
  FruitData(
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiq0CLHnEkKvAVLPIWhMZbopLOuVjIX0IUkA&usqp=CAU',
    name: 'Banana',
    price: 100,
    discription:
        'Bananas are incredibly healthy, convenient, delicious, and one of the most inexpensive fresh fruits you can buy. This makes them an excellent choice for anyone interested in eating healthy.',
  ),
  FruitData(
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq-GFUSIHGipHxgiQtS2h9iGUesieWj6wMLw&usqp=CAU',
    name: 'Grapes',
    price: 80,
    discription:
        'As you can see, grapes are a rich source of copper and vitamin K. Copper is an essential mineral involved in energy production, while vitamin K is vital for blood clotting and healthy bones',
  ),
  FruitData(
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHmIzrbqL7HBoOZgbO5ZVdOhwhgMaNLKNwVA&usqp=CAU',
    name: 'Orange',
    price: 150,
    discription:
        'Oranges are a nutritional powerhouse, packed with vitamins and minerals. The most noteworthy of these is vitamin C, a water-soluble antioxidant that prevents cell damage.',
  ),
];

class CardModel {
  String image;
  String icon;
  String number;
  double balance;

  CardModel({
    required this.image,
    required this.icon,
    required this.number,
    required this.balance,
  });
}

final cards = [
  CardModel(image: 'assets/bg_1.jpeg', icon: 'assets/icon_1.png', number: "0912", balance: 123.00),
  CardModel(image: 'assets/bg_2.jpeg', icon: 'assets/icon_2.jpeg', number: "0912", balance: 345.00),
];

// bg_1 : https://unsplash.com/photos/5LOhydOtTKU?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink
// bg_2 : https://unsplash.com/photos/5LOhydOtTKU?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink
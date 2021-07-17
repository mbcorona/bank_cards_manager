class BankCardModel {
  String image;
  String icon;
  String number;
  double balance;
  List<ExpenseModel> expenses;

  BankCardModel({
    required this.image,
    required this.icon,
    required this.number,
    required this.balance,
    this.expenses = const [],
  });
}

class ExpenseModel {
  String image;
  String title;
  String description;
  double amount;

  ExpenseModel({
    required this.image,
    required this.title,
    required this.description,
    required this.amount,
  });
}

final cards = [
  null,
  BankCardModel(
    image: 'assets/bg_2.jpeg',
    icon: 'assets/icon_2.jpeg',
    number: "0912",
    balance: 345.00,
    expenses: [
      ExpenseModel(
          image: 'assets/quinielapro.png',
          title: "Quiniela PRO",
          description: "100 Créditos",
          amount: 89)
    ],
  ),
  BankCardModel(
    image: 'assets/bg_1.jpeg',
    icon: 'assets/icon_1.png',
    number: "0912",
    balance: 123.00,
    expenses: [
      ExpenseModel(
        image: 'assets/amazon.png',
        title: "Amazon",
        description: "Retail Svcs MX",
        amount: 99,
      )
    ],
  ),
  BankCardModel(
    image: 'assets/bg_3.jpeg',
    icon: 'assets/icon_3.png',
    number: "8743",
    balance: 789.00,
    expenses: [
      ExpenseModel(
        image: 'assets/netflix.png',
        title: "Netflix",
        description: "Subscription",
        amount: 186,
      )
    ],
  ),
];

// bg_1 : https://unsplash.com/photos/5LOhydOtTKU?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink
// bg_2 : https://unsplash.com/photos/5LOhydOtTKU?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink
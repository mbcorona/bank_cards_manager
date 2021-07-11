import 'package:bank_calculator/cart_model.dart';
import 'package:bank_calculator/constants.dart';
import 'package:bank_calculator/widgets/calculator.dart';
import 'package:bank_calculator/widgets/calculator_bg.dart';
import 'package:bank_calculator/widgets/card_card.dart';
import 'package:bank_calculator/widgets/welcome_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pg =
      PageController(viewportFraction: .85, initialPage: 1);
  var currentPage = 1.0;

  onPageChange() {
    setState(() {
      currentPage = _pg.page!;
    });
  }

  @override
  void initState() {
    _pg.addListener(onPageChange);
    super.initState();
  }

  @override
  void dispose() {
    _pg.removeListener(onPageChange);
    _pg.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final top = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          WelcomeCard(top: top, size: size),
          CalculatorBG(currentPage: currentPage, size: size, top: top),
          Calculator(currentPage: currentPage),
          Opacity(
            opacity: (currentPage).clamp(0, 1),
            child: PageView(
              controller: _pg,
              children: [
                SizedBox.shrink(),
                CardCard(card: cards[0], size: size),
                CardCard(card: cards[1], size: size),
              ],
            ),
          )
        ],
      ),
    );
  }
}
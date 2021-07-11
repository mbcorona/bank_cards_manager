import 'package:bank_calculator/cart_model.dart';
import 'package:bank_calculator/constants.dart';
import 'package:flutter/material.dart';


// TODO: Improve the name XD
class CardCard extends StatelessWidget {
  const CardCard({
    Key? key,
    required this.card,
    required this.size,
  }) : super(key: key);

  final CardModel card;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * .15 +
            MediaQuery.of(context).padding.top +
            padding * 2,
        left: padding / 2,
        right: padding / 2,
        bottom: size.height * .1,
      ),
      child: Container(
        padding: const EdgeInsets.all(padding * 2),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              card.image,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipOval(
                  child: Image.asset(
                    card.icon,
                    width: 60,
                  ),
                ),
                Text(
                  card.number,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.white),
                )
              ],
            ),
            Text(
              '\$${card.balance.toStringAsFixed(0)}',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
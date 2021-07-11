import 'package:bank_calculator/constants.dart';
import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    Key? key,
    required this.top,
    required this.size,
  }) : super(key: key);

  final double top;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top + padding,
      left: padding * 2,
      right: padding * 2,
      child: SizedBox(
        height: size.height * .15,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent.withAlpha(50),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Bruno",
                        style: Theme.of(context).textTheme.headline5),
                    TextSpan(
                      text: " Corona",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/profile.jpeg'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.credit_card,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

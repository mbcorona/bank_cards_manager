import 'package:bank_calculator/constants.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: Constants.padding),
            decoration: BoxDecoration(
              color: Colors.purple.shade100,
              borderRadius: BorderRadius.circular(Constants.radius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Hello",
                    style: Theme.of(context).textTheme.headline5,
                    children: [
                      TextSpan(
                        text: " Bruno",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 75,
                  height: 50,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          radius: 25,
                          foregroundImage: AssetImage(
                            'assets/profile.jpeg',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.credit_card_outlined),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 5,
          width: 50,
          margin: const EdgeInsets.symmetric(
            vertical: Constants.padding,
          ),
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade800,
            borderRadius: BorderRadius.circular(Constants.radius),
          ),
        )
      ],
    );
  }
}

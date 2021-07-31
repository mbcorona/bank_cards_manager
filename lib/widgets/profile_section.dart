import 'dart:ui';

import 'package:bank_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
    required this.verticalPos,
  }) : super(key: key);

  final double verticalPos;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: Constants.padding),
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.padding * 2.5),
            decoration: BoxDecoration(
              color: const Color(0xFFFFDEDE),
              borderRadius: BorderRadius.circular(Constants.radius),
            ),
            child: Stack(
              children: [
                Center(child: buildHeader(context)),
                Opacity(
                  opacity: lerpDouble(0.0, 1.0, verticalPos/MediaQuery.of(context).size.height)!,
                  // duration: const Duration(milliseconds: 300),
                  child: verticalPos > 250
                      ? Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 650,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              color: Colors.white),
                                          child: const Icon(
                                            Icons.search,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: Constants.padding,
                                        ),
                                        const Text(
                                          "Search",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    buildUserAvatar(
                                      'assets/user1.png',
                                      "Alexa",
                                    ),
                                    buildUserAvatar(
                                      'assets/user2.png',
                                      "Aldo",
                                    ),
                                    buildUserAvatar(
                                      'assets/user3.png',
                                      "John",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: Constants.padding * 2,
                                ),
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Constants.radius),
                                    color: Colors.blueAccent.shade100,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(
                                            Constants.padding),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            Constants.radius,
                                          ),
                                          child: Image.asset(
                                            'assets/quinielapro.png',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Quiniela PRO",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.purple
                                            ),
                                            onPressed: () {},
                                            child: const Text("Download App"),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: Constants.padding * 2,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.all(Constants.padding),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Constants.radius),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: const [
                                      ListTile(
                                        leading: Icon(
                                          Icons.credit_card,
                                          color: Colors.black87,
                                          size: 30,
                                        ),
                                        title: Text(
                                          "Pay for services",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.money_rounded,
                                          color: Colors.black87,
                                          size: 30,
                                        ),
                                        title: Text(
                                          "Take a loan",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: Chip(label: Text("4%")),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.all(Constants.padding),
                                        child: Icon(
                                          Icons.more_horiz,
                                          size: 30,
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : null,
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

  Widget buildUserAvatar(String image, String name) => Column(
        children: [
          CircleAvatar(
            radius: 30,
            foregroundImage: AssetImage(
              image,
            ),
          ),
          const SizedBox(
            height: Constants.padding,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      );

  Row buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: "Hello",
            style: Theme.of(context).textTheme.headline5,
            children: const [
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
              const Align(
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
                  child: const Icon(Icons.credit_card_outlined),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  final double currentPage;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1 - (currentPage).clamp(0, 1),
      child: Column(
        children: [
          Expanded(flex: 3, child: SizedBox.shrink()),
          Expanded(
            flex: 1,
            child: Text(
              "Your card number",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white54),
            ),
          ),
          Expanded(
            flex: 6,
            child: GridView.count(
              crossAxisCount: 3,
              children: [1, 2, 3, 4, 5, 6, 7, 8, 9]
                  .map((e) => Center(
                        child: Text(
                          (e).toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Expanded(
            flex: 3,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Add card",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Flexible(child: SizedBox.shrink()),
        Flexible(
          child: Text(
            "Your card number",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white),
          ),
        ),
        Expanded(
          flex: 6,
          child: GridView.count(
            crossAxisCount: 3,
            children: [1, 2, 3, 4, 5, 6, 7, 8, 9]
                .map(
                  (e) => Center(
                    child: Text(
                      e.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const Flexible(child: SizedBox.shrink()),
      ],
    );
  }
}
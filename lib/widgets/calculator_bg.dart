import 'package:bank_calculator/constants.dart';
import 'package:flutter/material.dart';

class CalculatorBG extends StatelessWidget {
  const CalculatorBG({
    Key? key,
    required this.currentPage,
    required this.size,
    required this.top,
  }) : super(key: key);

  final double currentPage;
  final Size size;
  final double top;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 0),
      top: currentPage.clamp(0, 1) * (size.height * .15 + top + padding * 3),
      left: currentPage.clamp(0, 1) * padding,
      right: currentPage.clamp(0, 1) * 50,
      bottom: currentPage.clamp(0, 1) * size.height * .1 +
          currentPage.clamp(0, 1) * padding,
      child: Transform.translate(
        offset: Offset(
            currentPage < 1 ? 0 : (-1 * currentPage * size.width + size.width),
            0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF000022),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
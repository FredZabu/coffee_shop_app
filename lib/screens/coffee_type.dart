import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final int indexNo;
  const CoffeeType(
      {required this.coffeeType,
      required this.isSelected,
      required this.indexNo});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            indexNo == 0 ? EdgeInsets.only(left: 0) : EdgeInsets.only(left: 16),
        child: Text(
          coffeeType,
          style: TextStyle(
            color: isSelected ? Colors.orange : Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ));
  }
}

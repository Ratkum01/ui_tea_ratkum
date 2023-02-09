import 'package:flutter/material.dart';

class Tag_tea extends StatelessWidget {
  final String nametea;
  final bool isSelected;
  final VoidCallback onTap;
  const Tag_tea(
      {super.key,
      required this.nametea,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            nametea,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.grey,
            ),
          )),
    );
  }
}

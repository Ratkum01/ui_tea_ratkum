// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class Tea_tile extends StatelessWidget {
  const Tea_tile(
      {super.key,
      required this.teaImages,
      required this.teaName,
      required this.teaPrice,
      required this.teaComment});
  final String teaImages;
  final String teaName;
  final String teaComment;
  final String teaPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 150,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 101, 101, 101),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image tea
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(teaImages), fit: BoxFit.cover),
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            //text tea
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    teaName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    teaComment,
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                ],
              ),
            ),
            //price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    teaPrice,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.add))
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

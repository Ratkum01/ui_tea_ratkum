// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tea_ratkum/utils/tag_tea.dart';

import '../utils/coffee_tile.dart';
import '../utils/tea_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //tea photo
  final List teaPhoto = [
    'assets/images/tea1.avif',
    'assets/images/tea2.avif',
    'assets/images/tea3.avif',
    'assets/images/tea4.avif',
  ];
  final List teaName = ['Black Tea', 'Plant Tea', 'Green Tea', 'Milk Tea'];
  final List teaComment = [
    'Madin in Kz',
    'Madin in Russia',
    'Madin in USA',
    'Madin in India',
  ]; 
  final List teaPrice = [
    '\$40',
    '\$20',
    '\$70',
    '\$15',
  ];
  //
  final List teaType = [
    ['Black tea', true],
    ['Milk tea', false],
    ['Limon tea', false],
    ['Green tea', false],
  ];
  final List coffeePhoto = [
    'assets/images/coffee1.jpg',
    'assets/images/coffee2.jpeg',
    'assets/images/coffee3.jpeg',
    'assets/images/coffee4.jpeg',
  ];
  final List coffeeName = ['Капучино', 'Мапучино', 'Супершино', 'Афигентус'];

  final List coffeePrice = [
    '\$40',
    '\$20',
    '\$70',
    '\$15',
  ];

  //user taped tag
  void teaSellect(int index) {
    setState(() {
      for (int i = 0; i < teaType.length; i++) {
        teaType[i][1] = false;
      }
      teaType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Top TEA',
                    style: GoogleFonts.bebasNeue(fontSize: 40),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find your TEA',
                      prefixIcon: Icon(Icons.search),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //horizantal widget
                Container(
                    height: 20,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: teaType.length,
                        itemBuilder: (context, index) {
                          return Tag_tea(
                            nametea: teaType[index][0],
                            isSelected: teaType[index][1],
                            onTap: () {
                              teaSellect(index);
                            },
                          );
                        })),

                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 230,
                  child: ListView.builder(
                    itemCount: teaPhoto.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Tea_tile(
                          teaImages: teaPhoto[index],
                          teaName: teaName[index],
                          teaPrice: teaPrice[index],
                          teaComment: teaComment[index]);
                    },
                  ),
                ),
                Container(
                  height: 200,
                  child: GridView.builder(
                      // physics: NeverScrollableScrollPhysics(), //если включить не можешь скролить
                      itemCount: 4,
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return CoffeeTile(
                            teaImages: coffeePhoto[index],
                            teaName: coffeeName[index],
                            teaPrice: coffeePrice[index],
                            );
                       
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: '')
      ]),
    );
  }
}

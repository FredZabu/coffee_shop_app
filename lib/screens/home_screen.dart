// ignore_for_file: prefer_const_constructors

import 'package:coffee_shop/screens/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List coffee = const [
    ['Cappucino', true],
    ['Espresso', false],
    ['Latte', false],
    ['Milk', false],
    ['Brown Tea', false]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 16,
            ),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 16,
            ),
            child: Text('Find the best\nCoffee for you',
                style: GoogleFonts.lobster(
                  fontSize: 34,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find Your Coffee....',
                  filled: true,
                  fillColor: Color.fromARGB(31, 46, 45, 45)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 50,
              margin: EdgeInsets.only(left: 20),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffee.length,
                  itemBuilder: (context, index) {
                    return CoffeeType(
                      coffeeType: coffee[index][0],
                      isSelected: coffee[index][1],
                      indexNo: index,
                    );
                  })),
        ],
      ),
    );
  }
}

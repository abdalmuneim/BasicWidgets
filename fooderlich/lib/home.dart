import 'package:flutter/material.dart';
import 'package:fooderlich/components/card1.dart';
import 'package:fooderlich/components/card2.dart';
import 'package:fooderlich/components/card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //TODO: Add state variables and functions
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // TODO: Replace with Card
    const Card1(),

    // TODO: Replace with Card2
    const Card2(),

    // TODO: Replace with Card3
    const Card3(),
  ];

  void _onTapTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
      ),

      // TODO: Show selected tab
      body: _pages[_selectedIndex],

      //   TODO: Add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,

        // TODO: set selected tab bar
        currentIndex: _selectedIndex,
        onTap: _onTapTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card3'),
        ],
      ),
    );
  }
}

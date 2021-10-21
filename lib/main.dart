import 'dart:ui';
import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';
void main() {
  runApp(const MyApp());
}
int selectedIndex=0;
 List<Widget> cards=[
 card1(),
 card2(),
 card3(),
];
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        title: Center( child: Text ("Fooder", 
        style: const TextStyle(
          color: Colors.black),) ),
      ),
      body: cards[selectedIndex],
        bottomNavigationBar:
        BottomNavigationBar(
          onTap: (index){
            setState(() {
              selectedIndex=index;
            });
          },
          currentIndex: selectedIndex,
          items:const [
          BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard), label: 'card1'),
           BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard), label: 'card2'),
           BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard), label: 'card3')
          ],
          ),
        ),
        );
  }
}

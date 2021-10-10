import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        title: const Center( child: Text ("Fooder", 
        style: TextStyle(
          color: Colors.black),) ),
      ),
      body:Center( 
      child: Container(
        height: 600,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:
              Image.asset('assets/images/bread.jpg')
              ),
         
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>
            [ Text(
              'Editor\'s choice',
              style: GoogleFonts.roboto(fontSize: 18,color: Colors.white),
            ),
            Text('The Art of dough',
            style: GoogleFonts.roboto(fontSize: 26,color: Colors.white,fontWeight: FontWeight.bold),
            )],
        ),
          ) ],
        ),
        ),
        ),
        ),
        );
  }
}

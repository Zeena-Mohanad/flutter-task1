import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 class card1 extends StatelessWidget {
  const card1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Center( 
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
      );
  }
}
  
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff232931),
        appBar: AppBar(
          title: Text('List',style: GoogleFonts.openSans(color: Color(0xff4ecca3),fontWeight: FontWeight.bold,letterSpacing: 1.5),),
          centerTitle: true,
          backgroundColor: Color(0xff232931),
          elevation: 0,
        ),
      ),
    );
  }
}
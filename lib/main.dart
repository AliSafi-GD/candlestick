
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'MainPage/SignInPage.dart';
import 'MainPage/SignUpPage.dart';

void main() {
  runApp(MyApp());
}
Map data = new Map();
class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawerScrimColor: Colors.white,
          backgroundColor: Color(0xff232931),
          body: new PageView(
            children: [SignUp(), LoginPage()],
          )),
    );
  }
}

Widget InputField(double border, String hintText, IconData icon,
    {bool secure = false, TextInputType inputType = TextInputType.name}) {
  TextEditingController controller = new TextEditingController();
  return Container(
    width: 250.0,
    height: 45.0,
    decoration: BoxDecoration(
      color: Color(0xff393e46),
      borderRadius: BorderRadius.circular(border),
    ),
    child: TextField(
      textAlign: TextAlign.start,
      controller: controller,
      onChanged: (value){
        data[hintText]=controller.text;
        print(controller.text);
      },
      style: GoogleFonts.openSans(
          fontSize: 15.0, color: Color(0xffeeeeee), letterSpacing: 1.5),
      obscureText: secure,
      keyboardType: inputType,
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 15.0, right: 30.0),
            child: Icon(
              icon,
              color: Color(0xff535A65),
              size: 20.0,
            ),
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: GoogleFonts.openSans(
              fontSize: 15.0, color: Color(0xff535A65), letterSpacing: 1.5)),
    ),
  );
}

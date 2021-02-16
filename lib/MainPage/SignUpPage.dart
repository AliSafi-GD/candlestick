import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../main.dart';

class SignUp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text("SIGN UP",
                style: GoogleFonts.oleoScript(
                    color: Color(0xff4ecca3), fontSize: 35.0)),
          ),
          Wrap(
            runSpacing: 10.0,
            children: [
              InputField(5.0, "User Name", Icons.account_circle),
              InputField(5.0, "Password", Icons.lock, secure: true),
              InputField(5.0, "Confirm Password", Icons.lock, secure: true),
              InputField(5.0, "Mail", Icons.mail,
                  inputType: TextInputType.emailAddress)
            ],
          ),
          Container(
              width: 150.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Color(0xff4ecca3),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: FlatButton(
                onPressed: (){

                    print(data);

                },
                child: Text(
                  'Sign up',
                  style: GoogleFonts.openSans(
                      color: Color(0xffeeeeee),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      textStyle: TextStyle(letterSpacing: 1.50)),
                ),
              )),
          Container(
            child: Wrap(
              spacing: 5.0,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  'Swipe Right To ',
                  style: GoogleFonts.openSans(
                      color: Color(0xff535A65),
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      textStyle: TextStyle(letterSpacing: 1.50)),
                ),
                Text(
                  'LOGIN >>',
                  style: GoogleFonts.openSans(
                      color: Color(0xffeeeeee),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      textStyle: TextStyle(letterSpacing: 1.0)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
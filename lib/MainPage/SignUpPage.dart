import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
              InputField(5.0, "username", Icons.account_circle),
              InputField(5.0, "password", Icons.lock, secure: true),
              InputField(5.0, "confirm password", Icons.lock, secure: true),
              InputField(5.0, "email", Icons.mail,
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
                onPressed: () async {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  var js = jsonEncode(data);
                    print(js);

                    var url = 'http://10.0.2.2:5000/signup';
                    var response = await http.post(url,headers: {"Content-type": "application/json"}, body: js);
                    print('Response status: ${response.statusCode}');
                    print('Response body: ${response.body}');
                    //print(response.bodyBytes);

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
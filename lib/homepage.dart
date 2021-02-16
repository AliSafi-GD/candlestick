
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage/favorites_page.dart';
import 'package:flutter_application_1/HomePage/list_page.dart';
import 'package:flutter_application_1/HomePage/search_engine.dart';
import 'package:flutter_application_1/HomePage/settingPage.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 0;
  PageController pageController=new PageController(
    initialPage: 3
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff232931),
        body: Container(
          child: PageView(
            controller: pageController,
            children: [
              SettingPage(),
              SearchPage(),
              ListPage(),
              FavoritesPage(),
            ],
            onPageChanged: (value){
              setState(() {
                index = value;
                print(index);
              });

            },
          ),
        ),
          bottomNavigationBar: CurvedNavigationBar(
            index: index,
            animationCurve: Curves.easeOutExpo,
            onTap: (value){setState(() {

              index=value;print(index);
              pageController.animateToPage(index, duration: Duration(milliseconds: 250), curve: Curves.linear);
            }); },
            height: 50.0,
            backgroundColor: Color(0xff232931),
            color : Color(0xff535A65),
            buttonBackgroundColor: Color(0xff232931),
            items: [
              Icon(Icons.settings, color: Color(0xffeeeeee),),
              Icon(Icons.search, color: Color(0xffeeeeee),),
              Icon(Icons.list, color: Color(0xffeeeeee),),
              Icon(Icons.favorite, color: Color(0xffeeeeee),)
            ],
          ),

      ),
    );
  }
}



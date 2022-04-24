import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/contactMe.dart';
import 'package:portfolio_app/home.dart';
import 'package:portfolio_app/settings.dart';
import 'package:url_launcher/url_launcher.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {

    List _widgetoptions =[
      Home(),
      ContactMe(),
      Settings()
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Portfolio app",style: TextStyle(color: Colors.black),),
              Text(
                "Om Chaudhari",
                style: TextStyle(fontSize: 10,color: Colors.black),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'home'),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label:'Contact'),
            // BottomNavigationBarItem(icon: Icon(Icons.settings),label:'settings')
          ],
          onTap: (value){
            setState((){
                selectedIndex=value;
            });
          },
        ),
      body: _widgetoptions.elementAt(selectedIndex),
      ),
    );
  }
}

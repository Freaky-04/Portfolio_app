import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
        Column(
          children: [
            SizedBox(height: 25,),
            Card(
                elevation: 10.0,
                color: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Linkdin'),
                    tileColor: Colors.white,
                    subtitle: Text('My Linkdin Profile'),
                    leading: Icon(Icons.account_box_outlined),
                    trailing: Icon(Icons.launch),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    iconColor: Colors.blue,
                    onTap:(){
                      launch('https://www.youtube.com/');
                    },

                  ),
                )
            ),
            Card(
                elevation: 10.0,
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Instagram'),
                    tileColor: Colors.white,
                    subtitle: Text('My insta Profile'),
                    leading: Icon(Icons.account_box_outlined),
                    trailing: Icon(Icons.launch),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    iconColor: Colors.pink,
                    onTap:(){
                      launch('https://www.youtube.com/');
                    },

                  ),
                )
            ),
            Card(
                elevation: 10.0,
                color: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Linkdin'),
                    tileColor: Colors.white,
                    subtitle: Text('My Youtube Profile'),
                    leading: Icon(Icons.account_box_outlined),
                    trailing: Icon(Icons.launch),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    iconColor: Colors.red
                    ,
                    onTap:(){
                      launch('https://www.youtube.com/');
                    },

                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

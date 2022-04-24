import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Om Amrut Chaudahri",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Hii, I am in currently studing in computer third year of engineering, Currently learning Flutter Development.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 0, 0, 0),
                  child: Column(
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [Icon(Icons.message), Text("Text here")],
                      // ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.mail_outline,
                            color: Colors.deepPurple,
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            "chaudhariom008@gmail.com",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.deepPurple,
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            "Pune,maharashtra,India",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [Icon(Icons.account_circle), Text("Text here")],
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

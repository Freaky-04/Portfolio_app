import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_app/home.dart';
import 'package:portfolio_app/welcome.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with TickerProviderStateMixin{
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                'assets/loader.json',
                controller: _controller,
                onLoaded: (composition) {
                  _controller
                    ..duration = composition.duration
                    ..forward().whenComplete(() => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Welcome()),
                    ));
                },
              ),
            ),
            Text('Loading....'),
          ],
        ),
      );
    }
  //   return Scaffold(
  //     body: Center(
  //       child: Lottie.asset(
  //         'assets/loader.json',
  //
  //       ),
  //     ),
  //   );
  // }
}

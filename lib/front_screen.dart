import 'package:assignment/splash_screen.dart';
import 'package:flutter/material.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  _FrontScreenState createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SplashScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Center(
          child: Stack(
            children: <Widget>[
              CirclePath(
                path: "assets/images/Ellipse 5Login.png",
                height_size: 700,
              ),
              CirclePath(
                path: "assets/images/Ellipse 6Login.png",
                height_size: 600,
              ),
              CirclePath(
                path: "assets/images/Ellipse 7Login.png",
                height_size: 400,
              ),
              CirclePath(
                path: "assets/images/Group 10.png",
                height_size: 150,
              ),
              CirclePath(
                path: "assets/images/XMLID 1.png",
                height_size: 200,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 200),
                child: Text(
                  "Find Your Soulmate",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'bold',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CirclePath extends StatelessWidget {
  const CirclePath({
    Key? key,
    required this.path,
    required this.height_size,
  }) : super(key: key);
  final String path;
  final double height_size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        path,
        height: height_size,
        //width: double.infinity,
      ),
    );
  }
}
//Image.asset("assets/images/Ellipse 7.png", ),


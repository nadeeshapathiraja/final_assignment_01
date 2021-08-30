import 'package:animate_do/animate_do.dart';
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
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform(
              transform: Matrix4.diagonal3Values(1, 1, 1),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Pulse(
                    delay: Duration(milliseconds: 1000),
                    duration: Duration(milliseconds: 1000),
                    child: Container(
                      width: 550,
                      height: 550,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.03),
                        borderRadius: BorderRadius.circular(400.0),
                      ),
                    ),
                  ),
                  Pulse(
                    delay: Duration(milliseconds: 1000),
                    duration: Duration(milliseconds: 1000),
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(400.0),
                      ),
                    ),
                  ),
                  Pulse(
                    delay: Duration(milliseconds: 1000),
                    duration: Duration(milliseconds: 1000),
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.07),
                        borderRadius: BorderRadius.circular(400.0),
                      ),
                    ),
                  ),
                  Pulse(
                    delay: Duration(milliseconds: 1000),
                    duration: Duration(milliseconds: 1000),
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(400.0),
                      ),
                    ),
                  ),
                  ZoomIn(
                    delay: Duration(milliseconds: 1000),
                    duration: Duration(milliseconds: 1000),
                    child: Container(
                      child: Image.asset(
                        "assets/images/XMLID 1.png",
                        width: 120,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                "Find Your Soulmate",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'bold',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

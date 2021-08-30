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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Pulse(
                  delay: Duration(milliseconds: 500),
                  duration: Duration(milliseconds: 2000),
                  child: CircleWidget(
                    widthval: 400,
                    heightval: 400,
                    opacityval: 0.03,
                  ),
                ),
                Pulse(
                  delay: Duration(milliseconds: 500),
                  duration: Duration(milliseconds: 2000),
                  child: CircleWidget(
                    widthval: 300,
                    heightval: 300,
                    opacityval: 0.04,
                  ),
                ),
                Pulse(
                  delay: Duration(milliseconds: 500),
                  duration: Duration(milliseconds: 2000),
                  child: CircleWidget(
                    widthval: 200,
                    heightval: 200,
                    opacityval: 0.05,
                  ),
                ),
                Pulse(
                  delay: Duration(milliseconds: 500),
                  duration: Duration(milliseconds: 2000),
                  child: CircleWidget(
                    widthval: 100,
                    heightval: 100,
                    opacityval: 0.06,
                  ),
                ),
                ZoomIn(
                  delay: Duration(milliseconds: 500),
                  duration: Duration(milliseconds: 2000),
                  child: Image.asset(
                    "assets/images/XMLID 1.png",
                    width: 120,
                  ),
                )
              ],
            ),
          ),
          ElasticInLeft(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 2000),
            child: Text(
              "Find Your Soulmate",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    Key? key,
    required this.widthval,
    required this.heightval,
    required this.opacityval,
  }) : super(key: key);

  final double widthval;
  final double heightval;
  final double opacityval;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        width: widthval,
        height: heightval,
        decoration: BoxDecoration(
          color: Colors.pink.withOpacity(opacityval),
          borderRadius: BorderRadius.circular(400.0),
        ),
      ),
    );
  }
}

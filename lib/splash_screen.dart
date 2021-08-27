import 'package:assignment/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 4 * screenSize.height / 9,
              child: Image.asset("assets/images/Group 9image_grp.png"),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Text("Let's get Closer"),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              "The best place to meet your future partner.",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),

            //Custem button
            CustemButton(
              screenSize: screenSize,
              btnText: "Get Started",
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogInScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustemButton extends StatelessWidget {
  const CustemButton({
    Key? key,
    required this.screenSize,
    required this.btnText,
    required this.ontap,
  }) : super(key: key);

  final Size screenSize;
  final String btnText;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        width: 5 * screenSize.width / 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.red[400],
        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

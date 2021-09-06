import 'package:assignment/login_screen.dart';
import 'package:flutter/material.dart';

class TestNew extends StatefulWidget {
  const TestNew({Key? key}) : super(key: key);

  @override
  _TestNewState createState() => _TestNewState();
}

class _TestNewState extends State<TestNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Text("Hello"),
                onTap: () {
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
      ),
    );
  }
}

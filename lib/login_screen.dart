import 'package:assignment/home.dart';
import 'package:assignment/register_screen.dart';
import 'package:assignment/splash_screen.dart';
import 'package:assignment/truble_login_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var _email = TextEditingController();
  var _password = TextEditingController();

  var _emailError = "";
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: screenSize.height / 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        width: screenSize.width / 3,
                        child: Column(
                          children: [
                            Container(
                              width: screenSize.width / 3,
                              child: Image.asset("assets/images/XMLID 1.png"),
                            ),
                            Text(
                              "Login to a lovely life.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: screenSize.width / 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: screenSize.width / 3,
                        child: Image.asset("assets/images/Frame.png"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenSize.height / 30),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Enter Your Email",
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: _email,
                    style: TextStyle(
                      fontSize: 20,
                      height: 0.7,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      filled: true,
                      fillColor: Colors.grey[200],

                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: _emailError == "" ? Colors.grey : Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      //errorText: "Please Enter Valid Email",
                      errorText: _emailError,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _emailError = EmailValidator.validate(value)
                            ? ""
                            : "Please Enter Valid Email";
                      });
                    },
                  ),
                  Row(
                    children: [
                      Text(
                        "Enter Your Password",
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: _password,
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 20,
                      height: 0.7,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: Text(
                          "Trouble login?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TrubleLog(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  //Custem button in splash Screen
                  CustemButton(
                    screenSize: screenSize,
                    btnText: "Login",
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                  )
                ],
              ),
              SizedBox(height: 5),

              //--------Or------------
              OrWidget(screenSize: screenSize),

              //Facebook and google login attach
              SocialLogin(),
              SizedBox(height: 10),

              //Redirect to register page
              InkWell(
                child: Text(
                  " Don't have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30.0),
              Policies(),
            ],
          ),
        ),
      ),
    );
  }
}

class OrWidget extends StatelessWidget {
  const OrWidget({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: screenSize.width / 4,
              child: Divider(
                height: 20,
                thickness: 2,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Or",
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Container(
              width: screenSize.width / 4,
              child: Divider(
                height: 20,
                thickness: 2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

//Social login
class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 120,
          child: OutlinedButton(
            onPressed: () {},
            // style: ButtonStyle(
            //   shape: MaterialStateProperty.all(
            //     RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     ),
            //   ),
            // ),
            style: OutlinedButton.styleFrom(shadowColor: Colors.purple),
            child: Image.asset(
              "assets/images/google.png",
              height: 20.0,
            ),
          ),
        ),
        SizedBox(width: 15.0),
        Container(
          width: 120,
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: Icon(
              Icons.facebook,
            ),
          ),
        ),
      ],
    );
  }
}

//Polices and terms
class Policies extends StatelessWidget {
  const Policies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Text(
                "By continue to login, you accept our company's",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 10.0,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Text(
                "Term & Conditions ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                  fontSize: 10.5,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {},
            ),
            Text(
              "and",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 10.0,
              ),
            ),
            InkWell(
              child: Text(
                " Privacy Policies",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                  decoration: TextDecoration.underline,
                  fontSize: 10.5,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

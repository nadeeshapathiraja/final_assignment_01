import 'package:assignment/home.dart';
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
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: screenSize.height / 20),
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
                      style: TextStyle(color: Colors.red),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isNull() {
    if (_email.text.isEmpty || _password.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}

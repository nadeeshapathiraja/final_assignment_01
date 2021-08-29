import 'package:assignment/home.dart';
import 'package:assignment/login_screen.dart';
import 'package:assignment/splash_screen.dart';
import 'package:assignment/truble_login_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _email = TextEditingController();
  var _password = TextEditingController();
  var _phone = TextEditingController();
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
                SizedBox(height: screenSize.height / 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 4 * screenSize.width / 9,
                          child: Image.asset("assets/images/read.png"),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Register Here",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height / 50),
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
                          "Enter Your mobile number",
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    TextField(
                      maxLength: 10,
                      controller: _phone,
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 20,
                        height: 0.7,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Enter Your Password",
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
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

                    SizedBox(height: 20.0),
                    //Custem button in splash Screen
                    CustemButton(
                      screenSize: screenSize,
                      btnText: "Register",
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20.0),
                    //--------Or------------
                    OrWidget(screenSize: screenSize),
                    SizedBox(height: 5.0),
                    //Social login
                    SocialLogin(),
                    SizedBox(height: 20.0),
                    Policies(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

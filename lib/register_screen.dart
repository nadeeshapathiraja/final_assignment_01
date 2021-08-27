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
                SizedBox(height: screenSize.height / 20),
                Column(
                  children: [
                    TextField(
                      controller: _email,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",

                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),

                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: _emailError == "" ? Colors.grey : Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
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
                    TextField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
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

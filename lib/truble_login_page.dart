import 'package:assignment/login_screen.dart';
import 'package:assignment/splash_screen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TrubleLog extends StatefulWidget {
  const TrubleLog({Key? key}) : super(key: key);

  @override
  _TrubleLogState createState() => _TrubleLogState();
}

class _TrubleLogState extends State<TrubleLog> {
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
                SizedBox(height: screenSize.height / 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 2 * screenSize.height / 9,
                      child: Image.asset("assets/images/forgot.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Text(
                      "Trouble Log In?",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenSize.height / 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Enter Your Email",
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
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

                    SizedBox(height: 5.0),
                    //Custem button in splash Screen
                    CustemButton(
                      screenSize: screenSize,
                      btnText: "Send Reset Email",
                      ontap: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.SUCCES,
                          headerAnimationLoop: false,
                          animType: AnimType.BOTTOMSLIDE,
                          title: 'Your Email Sent Successfully',
                          desc: 'Check your email now...',
                          buttonsTextStyle: TextStyle(color: Colors.black),
                          showCloseIcon: true,
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        )..show();
                      },
                    ),
                    SizedBox(height: screenSize.height / 6),
                    Policies(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

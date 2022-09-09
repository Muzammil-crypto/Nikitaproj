import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:practice/SignUp_Screen/SignUp_Screen.dart';
import 'package:practice/screens/main_admin_screen.dart';

import '../color_class.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cColor().black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: med.height * 0.2,
            ),

            //logo image
            Center(
              child: Container(
                height: med.height * 0.2,
                width: med.width * 0.8,
                decoration: BoxDecoration(
                  color: cColor().black,
                  image: DecorationImage(
                    image: AssetImage("assets/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.08,
            ),

            Center(
              child: Container(
                width: med.width * 0.65,
                decoration: BoxDecoration(
                  color: cColor().blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: cColor().yellow,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: cColor().yellow,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: cColor().blue)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: cColor().blue)),
                    labelStyle: TextStyle(
                      color: cColor().yellow,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    labelText: "Username or email",
                    contentPadding: EdgeInsets.only(left: 18),
                    // ignore: missing_return
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.04,
            ),

            //Password
            Center(
              child: Container(
                width: med.width * 0.65,
                decoration: BoxDecoration(
                  color: cColor().blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: cColor().yellow,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: cColor().yellow,
                  obscureText: true,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: cColor().blue)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: cColor().blue)),
                    labelStyle: TextStyle(
                      color: cColor().yellow,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    labelText: "Password",
                    contentPadding: EdgeInsets.only(left: 18),
                    // ignore: missing_return
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.08,
            ),

            //login button
            Container(
              //margin: EdgeInsets.only(left: 15),
              height: med.height * 0.06,
              width: med.width * 0.35,
              child: RaisedButton(
                onPressed: () {
                  passwordController.clear();
                  emailController.clear();
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MainAdminPage()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 1.0,
                      color: cColor().lightBlue),
                ),
                color: cColor().yellow,
                textColor: cColor().lightBlue,
                hoverColor: cColor().lightYello,
                highlightColor: cColor().lightYello,
                splashColor: cColor().lightYello,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.03,
            ),

            //Sign Up text
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignUpScreen()));
              },
              child: Center(
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.rosario(
                    textStyle: TextStyle(
                      color: cColor().lightYello,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignUpScreen()));
              },
              child: Center(
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.rosario(
                    textStyle: TextStyle(
                      color: cColor().yellow,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

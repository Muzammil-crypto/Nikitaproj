import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/Authentication/login_page.dart';

import '../color_class.dart';

@immutable
class SignUpScreen extends StatelessWidget {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController confimrpasswordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cColor().black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: med.height * 0.12,
            ),

            //logo image
            Center(
              child: Container(
                height: med.height * 0.2,
                width: med.width * 0.8,
                decoration: BoxDecoration(
                  color: cColor().black,
                  image: const DecorationImage(
                    image: AssetImage("assets/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: med.height * 0.058,
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
                  controller: usernameController,
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
                    labelText: "Username",
                    contentPadding: EdgeInsets.only(left: 18),
                    // ignore: missing_return
                  ),

                  // validator: (val) => val.length < 6 ? 'Password too short.' : null,
                  // onSaved: (val) => _password = val,
                  // obscureText: _obscureText,
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.025,
            ),

            //Username or email textfield
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
                    labelText: "Email",
                    contentPadding: EdgeInsets.only(left: 18),
                    // ignore: missing_return
                  ),

                  // validator: (val) => val.length < 6 ? 'Password too short.' : null,
                  // onSaved: (val) => _password = val,
                  // obscureText: _obscureText,
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.025,
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

                  // validator: (val) => val.length < 6 ? 'Password too short.' : null,
                  // onSaved: (val) => _password = val,
                  // obscureText: _obscureText,
                ),
              ),
            ),
            SizedBox(
              height: med.height * 0.025,
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
                  controller: confimrpasswordController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: cColor().yellow,
                  obscureText: true,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Re-enter Password",
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
                    //   hintText: "Re-enter Password",
                    contentPadding: EdgeInsets.only(left: 18),
                    // ignore: missing_return
                  ),

                  // validator: (val) => val.length < 6 ? 'Password too short.' : null,
                  // onSaved: (val) => _password = val,
                  // obscureText: _obscureText,
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.055,
            ),

            //login button
            Container(
              //margin: EdgeInsets.only(left: 15),
              height: med.height * 0.06,
              width: med.width * 0.35,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
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
                confimrpasswordController.clear();
                emailController.clear();
                usernameController.clear();
                passwordController.clear();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Login()));
              },
              child: Center(
                child: Text(
                  "Log In",
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
          ],
        ),
      ),
    );
  }
}

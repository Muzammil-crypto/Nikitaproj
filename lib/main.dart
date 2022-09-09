import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/Authentication/login_page.dart';
import 'package:practice/color_class.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cColor().black,
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: med.height*0.18,
            ),

            //logo image
            Center(
              child: Container(
                height: med.height*0.2,
                width: med.width*0.75,
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
              height: med.height*0.1,
            ),

            Center(
              child: Container(
                child: Text("OSCE Case Database",
                  style: GoogleFonts.rosario(
                    textStyle: TextStyle(
                      color: cColor().lightPink,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: Container(
                child: Text("Peer Practice",
                  style: GoogleFonts.rosario(
                    textStyle: TextStyle(
                      color: cColor().lightPink,
                      fontSize: 26,
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


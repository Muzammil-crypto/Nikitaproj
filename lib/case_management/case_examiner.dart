import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_class.dart';

class CaseExaminer extends StatefulWidget {
  const CaseExaminer({Key? key}) : super(key: key);

  @override
  _CaseExaminerState createState() => _CaseExaminerState();
}

class _CaseExaminerState extends State<CaseExaminer> {
  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cColor().black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Hi, Nikita!",
          style: GoogleFonts.rosario(
            textStyle: TextStyle(
              color: cColor().blue,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: med.height * 0.03,
            ),

            //Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //back
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  height: med.height * 0.055,
                  width: med.width * 0.2,
                  decoration: BoxDecoration(
                    color: cColor().blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Container(
                      height: med.height * 0.035,
                      width: med.width * 0.1,
                      color: cColor().yellow,
                      child: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: cColor().blue,
                      ),
                    ),
                  ),
                ),

                //TextField
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: med.height * 0.055,
                  width: med.width * 0.65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.deepOrange,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          borderSide: BorderSide(color: cColor().black)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          borderSide: BorderSide(color: cColor().black)),
                      hintStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      hintText: "78         Black pain",
                      contentPadding:
                          EdgeInsets.only(left: 15, top: 15, bottom: 10),
                      // prefixText: "+92",
                      // prefixStyle: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 16,
                      // ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: med.height * 0.02,
            ),

            /*Column(
              children: <Widget>[

                TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(text: 'NEWS FEED',),
                    Tab(text: 'TO DO',),
                    Tab(text: "Help",)
                  ],
                ),
                // Container(
                //   child: Row(
                //     children: <Widget>[
                //       TabBar(
                //         unselectedLabelColor: Colors.grey,
                //         indicatorColor: Colors.black,
                //         labelColor: Colors.black,
                //         tabs: [
                //           Tab(text: 'NEWS FEED',),
                //           Tab(text: 'TO DO',),
                //           Tab(text: "Help",)
                //         ],
                //       ),
                //     ],
                //   ),
                // ),

                Container(
                  child: TabBarView(
                    children: [
                      PaitentScript(),
                      PaitentScript(),
                      PaitentScript(),
                    ],
                  ),
                ),

                // center widget
                */ /*Center(
                  child: Container(
                    height: med.height*0.68,
                    width: med.width*0.93,
                    decoration: BoxDecoration(
                      color: cColor().blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Container(
                        height: med.height*0.655,
                        width: med.width*0.88,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),*/ /*
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}

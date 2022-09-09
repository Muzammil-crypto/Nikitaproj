import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/model_classes/case_manage_admin_model.dart';

import '../color_class.dart';
import 'case_examiner.dart';

class CaseManageAdmin extends StatefulWidget {
  const CaseManageAdmin({Key? key}) : super(key: key);

  @override
  _CaseManageAdminState createState() => _CaseManageAdminState();
}

class _CaseManageAdminState extends State<CaseManageAdmin> {
  final List<CaseManageAdminModel> _caseManageAdmin = [
    CaseManageAdminModel(title: "Neoplasm", head: "Oncology", num: "365"),
    CaseManageAdminModel(title: "Neoplasm", head: "Oncology", num: "365"),
    CaseManageAdminModel(title: "Neoplasm", head: "Oncology", num: "365"),
    CaseManageAdminModel(title: "Neoplasm", head: "Oncology", num: "365"),
    CaseManageAdminModel(title: "Neoplasm", head: "Oncology", num: "365"),
    CaseManageAdminModel(title: "Neoplasm", head: "Oncology", num: "365"),
    CaseManageAdminModel(title: "Neoplasm", head: "Oncology", num: "365"),
  ];

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
            //Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      width: med.width * 0.09,
                      color: cColor().yellow,
                      child: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: cColor().blue,
                      ),
                    ),
                  ),
                ),

                //Cases Text
                Container(
                  margin: EdgeInsets.only(left: 30, top: 15),
                  child: Text(
                    "Cases",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: cColor().yellow,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                //Add icon
                Container(
                  margin: EdgeInsets.only(left: 30, top: 5),
                  height: med.height * 0.055,
                  width: med.width * 0.2,
                  decoration: BoxDecoration(
                    color: cColor().blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Container(
                      height: med.height * 0.035,
                      width: med.width * 0.09,
                      color: cColor().yellow,
                      child: Icon(
                        Icons.add,
                        size: 25,
                        color: cColor().blue,
                      ),
                    ),
                  ),
                ),
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
                      width: med.width * 0.09,
                      color: cColor().blue,
                      child: Icon(
                        Icons.ballot,
                        size: 28,
                        color: cColor().yellow,
                      ),
                    ),
                  ),
                ),

                //ballot icon
                // Container(
                //   margin: EdgeInsets.only(left: 10, top: 5),
                //  height: 40,
                //   width: 85,
                //   decoration: BoxDecoration(
                //     color: cColor().blue,
                //     borderRadius: BorderRadius.circular(25),
                //   ),
                //   child: Center(
                //     child: Icon(Icons.ballot, size: 35, color: cColor().yellow,),
                //   ),
                // ),
              ],
            ),

            SizedBox(
              height: med.height * 0.02,
            ),

            //Center widget
            Center(
              child: Container(
                height: med.height * 0.70,
                width: med.width * 0.93,
                decoration: BoxDecoration(
                  color: cColor().blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    //checkBox and title
                    Container(
                      height: 46,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          //CheckBox
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.check_box_outline_blank_outlined,
                                color: cColor().yellow,
                                size: 30,
                              ),
                            ),
                          ),

                          //No Text
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "No",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: cColor().yellow,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          //Title Text
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(
                              "Title",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: cColor().yellow,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          //arrow icon
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_drop_up_outlined,
                                color: cColor().yellow,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: med.height * 0.01,
                    ),

                    // main list data
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CaseExaminer()));
                        },
                        child: ListView.builder(
                          itemCount: _caseManageAdmin.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: med.height * 0.01,
                                ),
                                Center(
                                  child: Container(
                                    height: 42,
                                    width: med.width * 0.87,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        //CheckBox
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons
                                                  .check_box_outline_blank_outlined,
                                              color: cColor().yellow,
                                              size: 20,
                                            ),
                                          ),
                                        ),

                                        //Number Text
                                        Container(
                                          width: med.width * 0.1,
                                          child: Text(
                                            _caseManageAdmin[index].num,
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                color: cColor().yellow,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(
                                          width: med.width * 0.03,
                                        ),

                                        //Title
                                        Container(
                                          margin: EdgeInsets.only(top: 3),
                                          width: med.width * 0.4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              //Icon and Text
                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    child: Icon(
                                                      Icons.local_offer_rounded,
                                                      color: cColor().yellow,
                                                      size: 10,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      _caseManageAdmin[index]
                                                          .head,
                                                      style: GoogleFonts.roboto(
                                                        textStyle: TextStyle(
                                                          color:
                                                              cColor().yellow,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              //Title
                                              Container(
                                                margin: EdgeInsets.only(top: 2),
                                                child: Text(
                                                  _caseManageAdmin[index].title,
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                      color: cColor().yellow,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        //Edit icon button
                                        Row(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                constraints:
                                                    BoxConstraints.tight(
                                                        Size(30, 40)),
                                                iconSize: 20,
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.edit,
                                                  color: cColor().yellow,
                                                  size: 26,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: IconButton(
                                                constraints:
                                                    BoxConstraints.tight(
                                                        Size(30, 40)),
                                                iconSize: 20,
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.delete,
                                                  color: cColor().yellow,
                                                  size: 26,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),

                    // SizedBox(
                    //   height: med.height*0.14,
                    // ),

                    // serach icon and search bar
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          //Search icon
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: cColor().yellow,
                                size: 30,
                              ),
                            ),
                          ),

                          //Seacrh bar
                          Container(
                            height: med.height * 0.04,
                            width: med.width * 0.7,
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: TextField(
                                autocorrect: true,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: cColor().yellow),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: cColor().yellow),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: med.height * 0.015),

            //Buttons
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 12,
                  height: 40,
                ),
                //All button
                Expanded(
                  child: Container(
                    // height:42,
                    //  width: 80,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: cColor().yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.black,
                      textColor: cColor().yellow,
                      hoverColor: cColor().darkBrown,
                      highlightColor: cColor().darkBrown,
                      splashColor: cColor().darkBrown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),

                //Free button
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    // height: med.height*0.05,
                    // width: med.width*0.27,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Free",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: cColor().darkBrown,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: cColor().yellow,
                      textColor: cColor().yellow,
                      hoverColor: cColor().yellow,
                      highlightColor: cColor().yellow,
                      splashColor: cColor().yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),

                //Premium button
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    // height: med.height*0.05,
                    // width: med.width*0.27,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Premium",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: cColor().darkBrown,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: cColor().yellow,
                      textColor: cColor().darkBrown,
                      hoverColor: cColor().yellow,
                      highlightColor: cColor().yellow,
                      splashColor: cColor().yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

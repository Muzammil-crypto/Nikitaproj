import 'package:flutter/material.dart';

import '../color_class.dart';

class PaitentScript extends StatefulWidget {
  const PaitentScript({Key? key}) : super(key: key);

  @override
  _PaitentScriptState createState() => _PaitentScriptState();
}

class _PaitentScriptState extends State<PaitentScript> {
  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return Center(
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
    );
  }
}

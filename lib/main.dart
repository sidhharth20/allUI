import 'package:allwidgets/Alert_dialogue_Screen.dart';
import 'package:allwidgets/AssignmentMod6.dart';
import 'package:allwidgets/Bottom_Navigation_Screen.dart';
import 'package:allwidgets/DataList.dart';
import 'package:allwidgets/DataListinlist.dart';
import 'package:allwidgets/DataProduct.dart';
import 'package:allwidgets/DataProductList.dart';
import 'package:allwidgets/DataSharedprefs2.dart';
import 'package:allwidgets/ListViewNav.dart';
import 'package:allwidgets/animations2.dart';
import 'package:allwidgets/assignmentMod4.dart';
import 'package:allwidgets/bottomsheet.dart';
import 'package:allwidgets/d1.dart';
import 'package:allwidgets/finalAssignment/page1.dart';
import 'package:allwidgets/sqlite.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    addData();
    super.initState();
  }

  void addData(){
    DBhelper().addData("Hello", "sidhharth");
    DBhelper().addData("very good", "LAKSH");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: page1(),
    );
  }
}

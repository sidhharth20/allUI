import 'package:allwidgets/sixthpage.dart';
import 'package:flutter/material.dart';
import 'dart:io';
class fifthpage extends StatefulWidget {
  const fifthpage({super.key});

  @override
  State<fifthpage> createState() => _fifthpageState();
}

class _fifthpageState extends State<fifthpage> {
  String? name = stdin.readLineSync();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // body: Container(
        //   color: Colors.pink.shade100,
        //   child: ElevatedButton(onPressed: (){
        //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => thirdpage()),);
        //   }, child: Text("Go")),
        // ),
        body: Center(
          child: Container(
            child: ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  sixthpage(id: '1', name: 'dhruv',number: '9999999999',),
                ),
              );
            }, child: Text("Enter")),
          ),
        ),
      ),
    );
  }
}

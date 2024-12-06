import 'dart:developer';
import 'package:flutter/material.dart';

class sixthpage extends StatefulWidget {
  String id;
  String? name;
  String number;
  sixthpage({super.key, required this.id, this.name, this.number = ""});

  @override
  State<sixthpage> createState() => _sixthpageState();
}

class _sixthpageState extends State<sixthpage> {
  String id="";

  @override
  void initState() {
    super.initState();
    log("name : ${widget.name}");
    log("id : ${widget.id}");
    log("number : ${widget.number}");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: Column(
            children: [

              Text(widget.id),
              Text(widget.name ?? ""),
              Text(widget.number),


              ElevatedButton(onPressed: (){
                Navigator.of(context).pop();

              }, child: Text("Back")),

              // ElevatedButton(onPressed: (){
              //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => forthpage(title: "sid",descr: "Attended Central board of secondary education",image: "assets/g7.jpg",)));
              // }, child:Text("Next")),
            ],
          ),
        ),
      ),
    );
  }
}

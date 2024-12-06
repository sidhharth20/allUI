import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  List <Color> color = [Colors.red,Colors.yellow,Colors.blue,Colors.green];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,width: 100,
                  color:color[0] ,
                  child: Center(child: Align(
                      alignment: Alignment.topCenter,
                      child: Text("Item1"))),
                ),
                Container(
                  height: 210,width: 103,
                  color: color[1],
                  child: Center(child: Align(
                      alignment: Alignment.topCenter,
                      child: Text("Item2"))),
                ),
                Container(
                  height: 210,width: 103,
                  color: color[2],
                  child: Center(child: Align(
                      alignment: Alignment.topCenter,
                      child: Text("Item3"))),
                ),
                Container(
                  height: 210,width: 103,
                  color: color[3],
                  child: Center(child: Align(
                      alignment: Alignment.topCenter,
                      child: Text("Item4"))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
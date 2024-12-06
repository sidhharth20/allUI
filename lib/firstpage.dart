import 'package:flutter/material.dart';


class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Row(
            children: [
              Container(
                height: 70,width: 102,
                decoration: BoxDecoration(
                  gradient: LinearGradient( begin: Alignment.topLeft, // Start direction
                      end: Alignment.bottomRight,colors:[Colors.pink,Colors.orange,Colors.black]),
                ),
                child: Center(child: Text("Item1")),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient( begin: Alignment.topLeft, // Start direction
                      end: Alignment.bottomRight,colors:[Colors.teal,Colors.purple,Colors.blue]),
                ),
                height: 70,width: 103,
                child: Center(child: Text("Item2")),
              ),
              Container(
                height: 70,width: 103,
                color: Colors.blue,
                child: Center(child: Text("Item3")),
              ),
              Container(
                height: 70,width: 103,
                color: Colors.green,
                child: Center(child: Text("Item4")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
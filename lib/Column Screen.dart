import 'package:flutter/material.dart';
class Column_screen extends StatefulWidget {
  const Column_screen({super.key});

  @override
  State<Column_screen> createState() => _Column_screenState();
}

class _Column_screenState extends State<Column_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Container(
              height: 200,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 50,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 50,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 50,
              color: Colors.red,
            ),
          ],
        ),
      ),
    ));
  }
}

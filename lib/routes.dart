import 'package:flutter/material.dart';

class routes extends StatefulWidget {
  const routes({super.key});

  @override
  State<routes> createState() => _routesState();
}

class _routesState extends State<routes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Scaffold(
        body: Column(
          children: [
            Text("Press the button"),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/about');
            }, child:Text("Submit")),
          ],
        ),
      )),
    );
  }
}

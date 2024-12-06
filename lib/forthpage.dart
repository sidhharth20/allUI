import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          leading: CircleAvatar(
            child: Image.asset("assets/b1.jpg"),),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome back",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),),
                  Icon(Icons.handshake,color: Colors.yellow,),
                ],
              ),
              Text("Ronaldinho Fazio",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
            ],
          ),
          actions: [
            Icon(Icons.message,color: Colors.blue,),
            SizedBox(width: 15,),
            Icon(Icons.access_time,color: Colors.blue,),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top:20,left:25 ,right:15),
          color: Colors.white,
          child: Container(
            height: 200,
            width: 300,

            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
        ),
      ),

    );
  }
}

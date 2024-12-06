import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 1,top: 20,right: 5),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topLeft ,end:Alignment.topRight,colors:[Colors.cyanAccent ,Colors.blue]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                height: 95,width: 320,
                margin: EdgeInsets.all(10),
                child:  Row(
                  children: [
                    CircleAvatar(child: Image.asset("assets/boy.png",height: 50,width: 50,fit: BoxFit.cover,)),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(22),
                          child:
                          Column(
                            children: [
                              Text("Richerd Price"),
                              Text("Florida, USA"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width:90 ,),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(height: 0),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topLeft ,end:Alignment.topRight,colors:[Colors.pink ,Colors.red]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                height: 95,width: 320,margin:EdgeInsets.all(10), child:  Row(
                children: [
                  CircleAvatar(child: Image.asset("assets/boy.png",height: 50,width: 50,fit: BoxFit.cover,)),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(22),
                        child: Column(
                          children: [
                            Text("Richerd Price"),
                            Text("Florida, USA"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 90 ,),
                  Icon(Icons.arrow_forward),
                ],
              ),),
              SizedBox(height: 0,),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topLeft ,end:Alignment.topRight,colors:[Colors.cyanAccent ,Colors.blue]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 95,width: 320,
                margin: EdgeInsets.all(15),
                child: Row(
                  children: [
                    CircleAvatar(child: Image.asset("assets/boy.png",height: 50,width: 50,fit: BoxFit.fill,)),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(22),
                          child: Column(
                            children: [
                              Text("Richerd Price"),
                              Text("Florida, USA"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 90 ,),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          )
      ),
    ),
    );
  }
}

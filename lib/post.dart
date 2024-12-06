import 'package:flutter/material.dart';

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(itemBuilder: (BuildContext context, int index){
          return Column(
            children: [
              Text("Post",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w800),),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      radius: 26,
                      child: Image.asset("assets/boy.png")),
                  SizedBox(width: 15,),
                  Container(
                    margin: EdgeInsets.all(1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Steve Garrete",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),),
                        Text("5 hours ago | 100k views",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w300),),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset("assets/n3.jpeg"),
              Padding(
                padding: const EdgeInsets.all(9),
                child: Column(
                  children: [
                    Text("Overseas advanture Travel in Nepal",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w800),),
                    Container(
                      height: 85,width:330,
                      child: Text("Andaz Tokyo Toranomon Hills is one of the newest luxury hotels in Tokyo. Located in one of the uprising areas of Tokyo.",style: TextStyle(fontSize: 15),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                child: Divider(
                  height:1,
                ),
              ),
            ],
          );
        }, itemCount: 5,) ,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class container extends StatefulWidget {
  const container({super.key});

  @override
  State<container> createState() => _containerState();
}

class _containerState extends State<container> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Post",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
                  SizedBox(height: 11,),
                  Container(
                    margin: EdgeInsets.all(7),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius:38,
                          child: Image.asset("assets/boy.png"),
                        ),
                        SizedBox(width: 13,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Steve Garret",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:34),),
                            Text("5 hours ago | 100k views", style: TextStyle(color: Colors.grey.shade800,fontSize: 25,),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/n3.jpeg"),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text("Overseas advanture travel in Nepal",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:25),),
                        Container(height: 160, width: 400,child: Text("Andaz Tokyo Toranomon Hills is one of the newest luxury hotels in Tokyo. Located in one of the uprising areas of Tokyo.",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Colors.grey),)),
                      ],
                    ),
                  ),
                  Container(width:370, child: Divider(height:30,thickness: 2,color: Colors.grey.shade400,)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:allwidgets/listview_secondpage.dart';
import 'package:flutter/material.dart';

class ListviweScreen extends StatefulWidget {
  const ListviweScreen({super.key});

  @override
  State<ListviweScreen> createState() => _ListviweScreenState();
}

class _ListviweScreenState extends State<ListviweScreen> {
  List<dynamic> postList = [
    {"image": "assets/boy.png", "name": "Steve"},
    {"image": "assets/n2.jpg", "name": "abc"},
    {"image": "assets/boy.png", "name": "sjkjh"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Listview"),
          ),
          body: ListView.builder(
              shrinkWrap: true,
              itemCount: postList.length,
              itemBuilder: (BuildContext contex, int index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => listViewsecondpage(),),);
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          child: Image.asset(postList[index]["image"].toString()),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          postList[index]["name"].toString(),
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}

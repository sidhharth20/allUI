import 'package:flutter/material.dart';

class ListViewNav extends StatefulWidget {

  ListViewNav({super.key,});

  @override
  State<ListViewNav> createState() => _ListViewNavState();
}

class _ListViewNavState extends State<ListViewNav> {
  List<dynamic> postlist = [
    {
      'img': 'assets/boy.png',
      'name': 'sidhharth',
      'email' : 'sidhharth@gmail.com',
      'icon': Icon(Icons.access_time_filled_sharp),
    },
    {
      'img': 'assets/boy.png',
      'name': 'Laksh',
      'email' : 'laksh@gmail.com',
      'icon': Icon(Icons.add),
    },
    {
      'img': 'assets/camera.png',
      'name': 'Amit',
      'email' : ' iajdffjhbngbndsddvfvb',
      'icon': Icon(Icons.abc_outlined),
    },
    {
      'img': 'assets/adwords.png',
      'name': 'Vishal',
      'email' : 'vishal@gmail.com',
      'icon': Icon(Icons.access_time_filled_sharp),
    },
    {
      'img': 'assets/boy.png',
      'name': 'Aakash',
      'email' : 'aakash@gmail.com',
      'icon': Icon(Icons.access_time_filled_sharp),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(),
      appBar: AppBar(title: Text("ListView Nevigator"),backgroundColor: Colors.blue,),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount:postlist.length,itemBuilder: (BuildContext context, int index){
        return Card(
          color: Colors.lightBlueAccent,
          child: ListTile(
            leading: Image.asset(postlist[index]['img']!),
            title: Text(postlist[index]['name']!),
            subtitle: Text(postlist[index]['email']!),
            trailing: IconButton(onPressed:(){}, icon: postlist[index]['icon']!),
          ),
        );
      },),
    );
  }
}


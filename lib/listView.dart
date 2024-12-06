import 'package:flutter/material.dart';

class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  List<dynamic> content = [
    {
      'img': 'assets/boy.png',
      'title': 'Judi Dench',
      'email': 'judidench@gmail.com',
      'icon': Icons.arrow_forward
    },
    {
      'img': 'assets/adwords.png',
      'title': 'Cristian Bale',
      'email': 'christianbale@gmail.com',
      'icon': Icons.arrow_forward,
    },
    {
      'img': 'assets/camera.png',
      'title': 'keira knightly',
      'email': 'keiraknightly@gmail.com',
      'icon': Icons.arrow_forward
    },
    {
      'img': 'assets/dot.png',
      'title': 'kate bekinsale',
      'email': 'katebekinsale@gmail.com',
      'icon': Icons.arrow_forward,
    },
    {
      'img': 'assets/n2.jpg',
      'title': 'Dirk bogarde',
      'email': 'judidench@gmail.com',
      'icon': Icons.arrow_forward,
    },
    {
      'img': 'assets/n3.jpeg',
      'title': 'Judi Dench',
      'email': 'judidench@gmail.com',
      'icon': Icons.arrow_forward
    },
    {
      'img': 'assets/one.jpg',
      'title': 'Angela Lensbury',
      'email': 'judidench@gmail.com',
      'icon': Icons.arrow_forward,
    },
    {
      'img': 'assets/scanner.png',
      'title': 'Robert Carlyle',
      'email': 'robertcarlyle@gmail.com',
      'icon': Icons.arrow_forward,
    },
    {
      'img': 'assets/one.jpg',
      'title': 'Thandiwe Newton',
      'email': 'thandiwenewton@gmail.com',
      'icon': Icons.arrow_forward,
    },
    {
      'img': 'assets/scanner.png',
      'title': 'Sacha baron Cohen',
      'email': 'robertcarlyle@gmail.com',
      'icon': Icons.arrow_forward,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "ListView Navigator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: content.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(content[index]['img']),
                    ),
                    SizedBox(width: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          content[index]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        Text(
                          content[index]['email'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(content[index]['icon']),
              ],
            ),
          );
        },
      ),
    );
  }
}

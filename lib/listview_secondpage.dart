import 'package:flutter/material.dart';

class listViewsecondpage extends StatelessWidget {
  const listViewsecondpage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<dynamic, dynamic>> content = [
      {
        'icon1': Icon(Icons.shopping_cart),
        'title': "Donut",
        'subtitle': "Price: 13",
        'icon2': Icon(Icons.arrow_forward),
      },
      {
        'icon1': Icon(Icons.shopping_cart),
        'title': "Pizza",
        'subtitle': "Price: 10",
        'icon2': Icon(Icons.arrow_forward),
      },
      {
        'icon1': Icon(Icons.shopping_cart),
        'title': "Cupcack",
        'subtitle': "Price: 12",
        'icon2': Icon(Icons.arrow_forward),
      },
      {
        'icon1': Icon(Icons.shopping_cart),
        'title': "Ginger ",
        'subtitle': "Price: 10",
        'icon2': Icon(Icons.arrow_forward),
      },
      {
        'icon1': Icon(Icons.shopping_cart),
        'title': "JellyBean",
        'subtitle': "Price: 15",
        'icon2': Icon(Icons.arrow_forward),
      },
      {
        'icon1': Icon(Icons.shopping_cart),
        'title': "JellyBean",
        'subtitle': "Price: 15",
        'icon2': Icon(Icons.arrow_forward),
      },
      {
        'icon1': Icon(Icons.shopping_cart),
        'title': "JellyBean",
        'subtitle': "Price: 15",
        'icon2': Icon(Icons.arrow_forward),
      },




    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
            child: Text(
              "Food List",
              style: TextStyle(color: Colors.white),
            )),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey,
            child: Container(
              padding: EdgeInsets.only(left: 8,right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: content[index]['icon1']),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(content[index]['title']),
                          Text(content[index]['subtitle']),
                        ],
                      ),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: content[index]['icon2']),
                ],
              ),
            ),
          );
        },
        itemCount: content.length,
      ),
    );
  }
}

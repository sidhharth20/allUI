import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class data extends StatefulWidget {
  const data({super.key});

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  bool isReload = false;
  List <dynamic> items = [
    // {
    //   'img': "assets/fblogo.png",
    //   'title': "sid",
    //   'descr':"fvnkfjdvbnjkbfvhbfvbfhvfvbehfbjhj",
    //   'price': "100Rs"
    // },
    // {
    //   'img': "assets/gglogo.jpg",
    //   'title': "nik",
    //   'descr':"fjkbdfvbjkdvhbdjvhfhjbhj",
    //   'price': "200Rs"
    // }
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataAPIcall();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index){
            return Card(
              elevation: 10,
              child: Column(
                children: [
                  Image.network(items[index]['thumbnail'].toString(),height: 60,width: 60,),
                  SizedBox(height: 10,),
                  Text(items[index]['availabilityStatus'].toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.brown),),
                  SizedBox(height: 10,),
                  Text(items[index]['description'].toString()),
                  SizedBox(height: 10,),
                  Text(items[index]['price'].toString(),style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.w500),),
                ],
              ),
            );
          },),
      ),
    );
  }

  dataAPIcall() async {
    // setState(() {
    //   isReload = true;
    // });
    try {
      var response = await http.get(Uri.parse("https://dummyjson.com/products"));
      // Check if the response status is OK
      if (response.statusCode == 200) {
        var decode = jsonDecode(response.body);

        // Check if 'products' exists and is a list
        if (decode['products'] != null && decode['products'] is List) {
          setState(() {
            items.clear();
            items = List.from(decode['products']);
          });
        } else {
          print("Error: 'products' is null or not a list");
        }
      } else {
        print("Error: ${response.statusCode}");
        print("Error Body: ${response.body}");
      }
    } catch (e) {
      print("Exception in item list =>" + e.toString());
      throw e;
    }
  }



}
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Datalistinlist extends StatefulWidget {
  const Datalistinlist({super.key});

  @override
  State<Datalistinlist> createState() => _DatalistinlistState();
}

class _DatalistinlistState extends State<Datalistinlist> {
  List<dynamic> productList = [];

  @override
  void initState() {
    // TODO: implement initState
    getAPIrequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: productList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Column(
                          children: [
                            Text(productList[index]['name'].toString()),
                            Text(productList[index]['email']!),
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            Text(productList[index]['body'].toString()),
                            Text(productList[index]['name']!),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getAPIrequest() async {
    try {
      var responce = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
      if (responce.statusCode == 200) {
        var decode = jsonDecode(responce.body);
        if (decode != null && decode is List) {
          setState(() {
            productList = List.from(decode);
          });
        }
      } else {
        print("error");
      }
    } catch (e) {
      print("Exception in item List.");
      throw e;
    }
  }
}

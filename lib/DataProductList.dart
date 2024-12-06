import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Dataproductlist extends StatefulWidget {
  const Dataproductlist({super.key});

  @override
  State<Dataproductlist> createState() => _DataproductlistState();
}

class _DataproductlistState extends State<Dataproductlist> {
  List<dynamic> itemList = [];

  @override
  void initState() {
    // TODO: implement initState
    getAPIcall();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("API example"),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context,int index){
                return ListTile(
                  title: Text(itemList[index]['category'].toString()),
                );
              },itemCount: itemList.length,),
            ],
          ),
        )

      ),
    );
  }


  void getAPIcall() async {
    print("add");
    try {
      print("enter");
      var responce = await http.get(
          Uri.parse("https://fakestoreapi.com/products"));
      log("url https://fakestoreapi.com/products");
      if (responce.statusCode == 200) {
      //  log("Status code ${responce.statusCode}");
        var decode = jsonDecode(responce.body);
        if (decode != null && decode is List) {
          setState(() {
               itemList = List.from(decode);
          });
        }else{
          print("error");
        }
      }
    } catch (ex) {
      print("Exception in item list =>" + ex.toString());
      throw ex;
    }
  }

}



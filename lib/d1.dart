import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class data1 extends StatefulWidget {
  const data1({super.key,});

  @override
  State<data1> createState() => _data1State();
}

class _data1State extends State<data1> {
  List<dynamic> commentList = [];
  List<dynamic> datalist = [];
  @override
  void initState() {
    messageAPIcall();
    dataAPIcall();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(itemBuilder: (BuildContext context, int index){
          return Card(
            child: Column(
              children: [
                Text(datalist[index]['name'].toString() ?? 'No name'),
                SizedBox(height: 10,),
                Text(datalist[index]['id'].toString() ?? 'No id'),
                SizedBox(height: 10,),
                Text(datalist[index]['data'].toString() ?? 'No data'),
                SizedBox(height: 15,),
                Text(commentList[index]['name']),
              ],
            ),
          );
        },itemCount: datalist.length,),
      ),
    );
  }
  messageAPIcall() async{
    try{
      var responce = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
      if(responce.statusCode == 200){
        var decode = jsonDecode(responce.body);
        if(decode != null && decode is List){
          setState(() {
            commentList = decode;
          });
        }else{
          print("Error: Response body is not a valid Map");
        }
      }else{
        print("Error: ${responce.statusCode}");
      }
    }catch (e){
      print("Exception in item list =>" + e.toString());
      throw e;
    }
  }
  
  dataAPIcall() async {
    try{
      var responce = await http.get(Uri.parse("https://api.restful-api.dev/objects"));
      if(responce.statusCode == 200){
        var decode = jsonDecode(responce.body);
        if(decode != null && decode is List){
          setState(() {
            datalist = decode;
          });
        }else{
          print("Error");
        }
      }else{
        print("Error: ${responce.statusCode}");
      }
    }catch (exc){
      throw exc;
    }
  }
}
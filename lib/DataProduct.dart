import 'dart:convert';
import 'package:allwidgets/DataProduct2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Demo2 extends StatefulWidget {
  const Demo2({super.key});

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  List<dynamic> Datalist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataAPIcall();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Api"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: Datalist.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        //physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext contex, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Card(
                                elevation: 4,
                                child: Container(
                                  width: 100,
                                  padding: EdgeInsets.only(left: 3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: ClipRRect(

                                            borderRadius: BorderRadius.circular(60),
                                            child: Image.network(
                                                Datalist[index]["thumbnail"].toString()),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        Datalist[index]["brand"].toString(),
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(Datalist[index]["price"].toString(),
                                          style: TextStyle(
                                            fontSize: 12,
                                          )),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          );
                        }),
                  ),
                  SizedBox(

                    height: 20,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: Datalist.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.72),
                      itemBuilder: (BuildContext contex, int index) {
                        return Card(
                          elevation: 2,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Deatils_Screen(id: Datalist[index]["id"].toString(),)));
                            },
                            child: Container(
                              padding: const EdgeInsets.only(left: 10,top: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(80),
                                          border: Border.all(color: Colors.black)),
                                      height: 70,
                                      width: 70,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(70),
                                        child: Container(
                                            child: Image.network(
                                              Datalist[index]["thumbnail"].toString(),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(

                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.red,
                                        size: 12,
                                      ),
                                      SizedBox(

                                        width: 5,
                                      ),
                                      Text(
                                        Datalist[index]["id"].toString(),
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(

                                    height: 5,
                                  ),
                                  Text(Datalist[index]["brand"] == null?"Brand Name":
                                  Datalist[index]["brand"].toString(),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(

                                    height: 5,
                                  ),
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 11,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 11,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 11,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 11,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 11,
                                      ),
                                      SizedBox(

                                        width: 10,
                                      ),
                                      Text(
                                        Datalist[index]["rating"].toString(),
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(

                                    height: 5,
                                  ),
                                  Text(
                                    "\$ ${Datalist[index]["price"].toString()}",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ));
  }

  dataAPIcall() async {
    // setState(() {
    //   isReload = true;
    // });
    try {
      var response =
      await http.get(Uri.parse("https://dummyjson.com/products"));
      // Check if the response status is OK
      if (response.statusCode == 200) {
        var decode = jsonDecode(response.body);

        // Check if 'products' exists and is a list
        if (decode['products'] != null && decode['products'] is List) {
          setState(() {
            Datalist.clear();
            Datalist = List.from(decode['products']);
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
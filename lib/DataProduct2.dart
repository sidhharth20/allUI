import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Deatils_Screen extends StatefulWidget {
  String id;

  Deatils_Screen({super.key, required this.id});

  @override
  State<Deatils_Screen> createState() => _Deatils_ScreenState();
}

class _Deatils_ScreenState extends State<Deatils_Screen> {
  Map detailsList = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detailsAPIcall();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Details Screen"),
          ),
          body: Container(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(140),
                            color: Colors.red),
                        // height: 100,
                        //     width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              child: Image.network(
                                detailsList["thumbnail"].toString(),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(

                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                          //size: 12,
                        ),
                        SizedBox(

                          width: 5,
                        ),
                        Text(
                          detailsList["id"].toString(),
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    SizedBox(

                      height: 10,
                    ),
                    Text(
                      detailsList["brand"] == null
                          ? "Brand Name"
                          : detailsList["brand"].toString(),
                      style: TextStyle(),
                    ),
                    SizedBox(

                      height: 10,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          // size: 11,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          // size: 11,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          // size: 11,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          // size: 11,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          //  size: 11,
                        ),
                        SizedBox(

                          width: 10,
                        ),
                        Text(
                          detailsList["rating"].toString(),
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    SizedBox(

                      height: 10,
                    ),
                    Text(
                      "\$ ${detailsList["price"].toString()}",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  detailsAPIcall() async {
    try {
      var response = await http
          .get(Uri.parse("https://dummyjson.com/products/${widget.id}"));

      if (response.statusCode == 200) {
        var decode = jsonDecode(response.body);

        // Ensure the response is not null or empty
        if (decode != null && decode is Map) {
          setState(() {
            detailsList = decode; // Assign decoded map
            // isLoading = false;
          });
        } else {
          // Handle case where the response is empty or not as expected
          print("Error: Response body is not a valid Map");
          // setState(() {
          //   isLoading = false;
          // });
        }
      } else {
        // Handle API error
        print("Error: ${response.statusCode}");
        // setState(() {
        //   isLoading = false;
        // });
      }
    } catch (e) {
      print("Exception in item list =>" + e.toString());
      setState(() {
        // isLoading = false;
      });
    }
  }
}
import 'package:flutter/material.dart';

class rowcolumn extends StatefulWidget {
  const rowcolumn({super.key});

  @override
  State<rowcolumn> createState() => _rowcolumnState();
}

class _rowcolumnState extends State<rowcolumn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Icon(Icons.arrow_back),
          title: Text(
            "Row Column",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            Container(
              child: Text("hello"),
            ),
            Icon(Icons.arrow_downward_outlined),
            Container(
              height: 20,
              width: 40,
              child: Image.asset("assets/adwords.png"),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Strawberry Pavlova",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                width: 150,
                                child: Text(
                                    "Palvola is meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft,light inside, topped with fruit and whipped cream.")),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 225,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.red,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.deepPurple,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.green,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                    ],
                                  ),
                                  Text("170 Reviews"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.ad_units_rounded),
                                    Text("PREP"),
                                    Text("25 min"),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.food_bank),
                                    Text("COOK"),
                                    Text("1 hr"),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.feed),
                                    Text("FEEDS"),
                                    Text("4-6"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  color: Colors.red,
                  height: 340,
                  width: 150,
                  child: Image.asset(
                    "assets/one.jpg",
                    fit: BoxFit.fill,
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

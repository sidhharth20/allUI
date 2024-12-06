import 'package:flutter/material.dart';

class radiobuttonCheckbox extends StatefulWidget {
  const radiobuttonCheckbox({super.key});

  @override
  State<radiobuttonCheckbox> createState() => _radiobuttonCheckboxState();
}

class _radiobuttonCheckboxState extends State<radiobuttonCheckbox> {
  String sport = "";
  bool selected1 = true;
  bool selected2 = true;
  bool selected3 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 25,),
          child: Column(
            children: [
              Text("RadioButton"),
              Container(
                child: RadioListTile(
                    fillColor: MaterialStateProperty.resolveWith(
                          (states) {
                        if (states.contains(MaterialState.selected)) {
                          return Colors.red;
                        }
                        return Colors.pink;
                      },
                    ),
                    activeColor: Colors.blue,
                    title: Text("Swimming"),
                    value: "Swimming",
                    groupValue: sport,
                    onChanged: (value) {
                      setState(() {
                        sport = value.toString();
                      });
                    }),
              ),
              Container(
                child: RadioListTile(
                    activeColor: Colors.orange,
                    title: Text("Sketting"),
                    value: "Sketting",
                    groupValue: sport,
                    onChanged: (value) {
                      setState(() {
                        sport = value.toString();
                      });
                    }),
              ),
              Container(
                child: RadioListTile(
                    activeColor: Colors.pink,
                    title: Text("Running"),
                    value: "Running",
                    groupValue: sport,
                    onChanged: (value) {
                      setState(() {
                        sport = value.toString();
                      });
                    }),
              ),
              Text("CHECKBOX"),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(),
                      // shape: CircleBorder( side: BorderSide(style: BorderStyle.solid)),
                      activeColor: Colors.red,
                      checkColor: Colors.white,
                      value: selected1, onChanged: (selected){ setState(() {
                    selected1 = !selected1;
                  });}),
                  Text("JAVA"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder() ,
                      activeColor: Colors.lightGreen,
                      checkColor: Colors.white,
                      value: selected2, onChanged: (selected){ setState(() {
                    selected2 = !selected2;
                  });}),
                  Text("Python"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(),
                      activeColor: Colors.lightBlue,
                      checkColor: Colors.white,
                      value: selected3, onChanged: (selected){ setState(() {
                    selected3 = !selected3;
                  });}),
                  Text("C++"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

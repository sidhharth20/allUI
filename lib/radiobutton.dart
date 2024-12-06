import 'package:flutter/material.dart';

class radiobutton extends StatefulWidget {
  const radiobutton({Key? key}) : super(key: key);

  @override
  State<radiobutton> createState() => _radiobuttonState();
}

class _radiobuttonState extends State<radiobutton> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Radio Button",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          RadioListTile(
            contentPadding: EdgeInsets.all(0),
            fillColor: WidgetStatePropertyAll(Colors.red),

            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
            title: Text("Male"),
            value: "male",
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          ),

          RadioListTile(
            title: Text("Female"),
            value: "female",
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          ),

          RadioListTile(
            title: Text("Other"),
            value: "other",
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          )
        ],
      ),

    );
  }

}



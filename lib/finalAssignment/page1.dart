import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                "Log in",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Welcome! Please Log in",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.green),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "E-mail",
                  hintStyle: TextStyle(color: Colors.green),
                  prefixIcon: Icon(Icons.message),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.green),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  prefixIcon: Icon(Icons.message),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 110,
              ),
              SizedBox(
                  height: 50,
                  width: 95,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "LOG IN",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  )),
              Row(
                children: [
                  SizedBox(width: 140,child: Divider(height: 140,color: Colors.black,)),
                  Text("Or",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w200),),
                  SizedBox(width: 130,child: Divider(height: 140,color: Colors.black,)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.apple,color: Colors.black,size: 55,),
                  SizedBox(width: 72,),
                  Image.asset("assets/goog.jpg",height: 40,width: 40,),
                  SizedBox(width: 72,),
                  Image.asset("assets/fblogo.png",height: 40,width: 40,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(color: Colors.black,fontSize: 15),),
                  SizedBox(width: 5,),
                  Text("Sig np.",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

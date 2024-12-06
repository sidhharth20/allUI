import 'package:allwidgets/firstpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textfield2 extends StatefulWidget {
  const textfield2({super.key});

  @override
  State<textfield2> createState() => _textfield2State();
}

class _textfield2State extends State<textfield2> {
  bool  password = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 65, left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Create your account",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Username",
                    prefixIcon: (Icon(Icons.person)),
                  ),
                  validator: (text){
                    if(text== null|| text == ""){
                      return "Please Enter Name";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Email",
                    prefixIcon: (Icon(Icons.email)),
                  ),
                  validator: (text){
                    if(text == null || text ==""){
                      return "Please Enter Email";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: password,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {

                      },
                      icon: password == true
                          ? Icon(CupertinoIcons.eye_slash_fill)
                          : Icon(CupertinoIcons.eye_fill),
                    ),
                    filled: true,
                    focusColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Password",
                    prefixIcon: (Icon(Icons.password)),
                  ),
                  validator: (text){
                    if(text == null || text == ""){
                      return "Please Enter Password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Confirm Password",
                    prefixIcon: (Icon(Icons.password)),
                  ),
                  validator: (text){
                    if(text == null || text == ""){
                      return "Please Enter Password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 55,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () {

                        if(_formKey.currentState!.validate() && password == password){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> firstpage(),));

                        }
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Or",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.deepPurple, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Sign In with Google",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    SizedBox(
                      height: 150,
                      width: 5,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

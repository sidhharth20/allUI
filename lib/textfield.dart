import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 70, left: 20, right: 15),
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Enter your credential to login",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 100,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.purple.shade50,
                    filled: true,
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(13),
                    //    borderSide: BorderSide(color: Colors.deepPurple),
                    // ),
                    // disabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(12),
                    //     borderSide: BorderSide(color: Colors.green)
                    // ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    // focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(12),
                    //     borderSide: BorderSide(color: Colors.green)
                    // ),
                    hintText: "Username",
                    prefixIcon: (Icon(Icons.person)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Password",
                    prefixIcon: (Icon(Icons.password)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 55,
                  width: 325,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w800,
                      fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    SizedBox(
                      height: 150,width: 5,
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

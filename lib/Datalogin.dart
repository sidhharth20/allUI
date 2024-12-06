import 'package:allwidgets/DataHome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  late SharedPreferences login;
  late bool newuser;

  void initState() {
    // TODO: implement initState
    super.initState();
    check_already_login();
  }

  void check_already_login() async {
    login = await SharedPreferences.getInstance();
    newuser = (login.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomeScreen(),));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
                TextFormField(
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
                    hintText: "Email Address",
                    prefixIcon: (Icon(Icons.person)),
                  ),
                  validator: (text){
                    if(text == null || text == ""){
                      return "please enter email";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Password",
                    prefixIcon: (Icon(Icons.password)),
                  ),
                  validator: (pass){
                    if(pass == null || pass == ""){
                      return "please enter password";
                    }
                    return null;
                  },
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
                    onPressed: () {
                      if(_formkey.currentState!.validate()){
                        login.setBool('login', false);
                        login.setString('email', emailcontroller.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                      }

                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/cont');
                }, child:Text("EN")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

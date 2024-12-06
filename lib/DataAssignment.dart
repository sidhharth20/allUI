import 'package:allwidgets/Data.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class assignment extends StatefulWidget {
  const assignment({super.key});

  @override
  State<assignment> createState() => _assignmentState();
}

class _assignmentState extends State<assignment> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  static const String KEYNAME = "name";
  static const String KEYEMAIL = "email";
  static const String KEYPASS = "pass";
  static const String KEYPASS2 = "pass2";
  bool checkbox = true;
  late SharedPreferences signup;
  late bool user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_signup();
    getDetails();

  }

  void check_signup() async{
    signup = await SharedPreferences.getInstance();
    user = (signup.getBool('signup') ?? true);
    print(user);
    if(user == false){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => data(),),);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    t1.dispose();
    t2.dispose();
    t3.dispose();
    t4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.only(top: 45, left: 30, right:30),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Sign Up", style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),),
                  Text("Welcome please Sign up", style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.green),),
                  SizedBox(height: 45,),
                  TextFormField(
                      controller: t1,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle),
                        hintText: "Name",
                        hintStyle: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w300),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.black
                          ),
                        ),
                      ), validator:(text){
                    if(text == null || text == ""){
                      return "please enter name";
                    }
                    return null;
                  }
                  ),
                  SizedBox(height: 40,),
                  TextFormField(
                    controller: t2,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w300),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.black
                        ),
                      ),
                    ),validator: (eml){
                    if(eml == null || eml == ""){
                      return "Please enter email";
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: 40,),
                  TextFormField(
                    controller: t3,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIcon: Icon(Icons.password),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w300),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.black
                        ),
                      ),
                    ),validator: (pass1){
                    if(pass1 == null || pass1 == ""){
                      return "Please enter password";
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: 40,),
                  TextFormField(
                    controller: t4,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIcon: Icon(Icons.password),
                      hintText: "Re-Type password",
                      hintStyle: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w300),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.black
                        ),
                      ),
                    ),validator: (pass2){
                    if(pass2 == null || pass2 == ""){
                      return "comfirm password";
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.green,
                        checkColor: Colors.black,
                        value: checkbox,
                        onChanged: (value) {
                          setState(() {
                            checkbox = !checkbox;
                          });
                        },
                      ),
                      SizedBox(width: 7,),
                      Text("I agree to the term of use",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w200),),
                    ],
                  ),
                  ElevatedButton(onPressed: () async{
                    if(_formKey.currentState!.validate()){
                      signup.setBool("signup", false);
                      signup.setString("name", t1.text);
                      signup.setString("email", t2.text);
                      signup.setString("password",t3.text);
                      signup.setString("password2",t4.text);
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => data(),),);
                    }
                  }, child:Text("SIGN UP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(
                          width: 140,
                          child: Divider()),
                      Text("Or",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                      SizedBox(
                          width: 140,
                          child: Divider()),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.apple,color: Colors.black,size: 40,),
                      SizedBox(width: 80,),
                      Image.asset("assets/gglogo.jpg",height: 50,width: 50,),
                      SizedBox(width: 80,),
                      Image.asset("assets/fblogo.png",height: 32,width: 32,),
                    ],
                  ),
                  SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),),
                      SizedBox(width: 6,),
                      Text("Sign up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                    ],
                  ),
                ],
              ),
            ),
          ),),
      )
      ,
    );
  }
}

void getDetails()async {
  var prefs  = await SharedPreferences.getInstance();
  var getName = prefs.getString("name");
  var getemail = prefs.getString("email");
  var getpass = prefs.getString("pass1");
  var getpass2 = prefs.getString("pass2");
}

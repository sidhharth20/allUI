import 'package:allwidgets/Datacount.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SharedPreferences login;
  late String email;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    login = await SharedPreferences.getInstance();
    setState(() {
      email = login.getString('email')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home Screen"),
          ),
          body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                ElevatedButton(onPressed: (){
                  login.setBool('login', true);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => cont(),));
                }, child: Text("Logout"))
              ],
            ),
          ),
        ));
  }
}

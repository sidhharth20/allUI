import 'package:allwidgets/Data.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class cont extends StatefulWidget {
  const cont({super.key});

  @override
  State<cont> createState() => _contState();
}

class _contState extends State<cont> {
  static const String KEYNAME = "name";
  static const String KEYNUM = "Number";
  var nameValue = "No value saved";
  var numValue = "No number saved";
  final _formKey1 = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController numController = TextEditingController();
  late SharedPreferences enter;
  late bool user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cheak();
    getname();
  }

  void cheak() async {
    enter = await SharedPreferences.getInstance();
    user = (enter.getBool('enter') ?? true);
    print(user);
    if (user == false) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => data(), ));
    }
  }


  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    numController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Form(
        key: _formKey1,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: nameController,
              decoration: InputDecoration(
                filled: true,
                focusColor: Colors.purple.shade50,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: "contact number",
                prefixIcon: (Icon(Icons.numbers)),
              ),
              validator: (nam) {
                if (nam == null || nam == "") {
                  return "please enter password";
                }
                return null;
              },
            ),
            SizedBox(height: 55,),
            ElevatedButton(onPressed: () async{
              // if (_formKey1.currentState!.validate()) {
              //   enter.setBool('enter', false);
              //   enter.setString('number', numController.text);
              //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => data()));
              // }
              var name = nameController.text.toString();
              var prefs = await SharedPreferences.getInstance();
              prefs.setString(KEYNAME, name);
              var num = numController.text.toString();
              var prefs1 = await SharedPreferences.getInstance();
              prefs1.setString(KEYNUM, num);
            }, child: Text("Enter"),),
            Text(nameValue),

          ],
        ),
      ),
    ));
  }
  void getname() async{
    var prefs  = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);
    setState(() {
      nameValue = getName ?? "No value saved";
    });
  }
}


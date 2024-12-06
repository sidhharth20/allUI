import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:allwidgets/image.dart';

class DataSharedPrefs2 extends StatefulWidget {
  const DataSharedPrefs2({super.key});

  @override
  State<DataSharedPrefs2> createState() => _DataSharedPrefs2State();
}

class _DataSharedPrefs2State extends State<DataSharedPrefs2> {
  TextEditingController nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  static const String KEYNAME = "name";
  late SharedPreferences enter;
  late bool user;
  String? storedName;

  // Method to check the user and navigate
  void checkEnter() async {
    enter = await SharedPreferences.getInstance();
    user = (enter.getBool('signup') ?? true);
    print(user);
    if (user == false) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => image(),)); // Adjust image widget navigation as needed
    }
  }

  // Fetch the name from SharedPreferences
  void getName() async {
    var prefs = await SharedPreferences.getInstance();
    setState(() {
      storedName = prefs.getString("name"); // Set the stored name to the state variable
    });
  }

  @override
  void initState() {
    super.initState();
    getName(); // Fetch the name when the widget initializes
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                hintText: "Name",
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "Enter the name";
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                enter.setBool("enter", false);
                enter.setString("name", nameController.text);
                setState(() {
                  storedName = nameController.text; // Update the UI with the entered name
                });
                // Optionally navigate to another screen here
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ImageWidget()));
              }
            },
            child: const Text("Enter"),
          ),
          const SizedBox(height: 25),
          Text(storedName ?? "No name saved"), // Display the stored name or a default message
        ],
      ),
    );
  }
}

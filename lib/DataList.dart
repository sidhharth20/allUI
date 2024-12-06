import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Datalist extends StatefulWidget {
  const Datalist({super.key});

  @override
  State<Datalist> createState() => _DatalistState();
}

class _DatalistState extends State<Datalist> {
  List <dynamic> users = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rest API"),),
      floatingActionButton: FloatingActionButton(onPressed: fetchUser),
      body: ListView.builder(itemBuilder: (context, index) {
        final user = users[index];
        final email = user['email'];
        final gn = user['gender'];
        final imageuUrl = user['picture']['thumbnail'];
        return ListTile(
          leading: CircleAvatar(child: Image.network(imageuUrl),),
          title: Text(email),
          trailing: Column(
            children: [
              Text(gn),
            ],
          ),
        );
      }, itemCount: users.length,),
    );
  }

  void fetchUser() async {
    const url = "https://randomuser.me/api/?results=100";
    final uri = Uri.parse(url);
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        setState(() {
          users = json['results'];
        });
        print("fetch Users completed...");
      } else {
        print('Failed to load users. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching users.');
      throw e;
    }
  }
}

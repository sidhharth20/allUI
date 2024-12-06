import 'package:flutter/material.dart';
class pr extends StatefulWidget {
  const pr({super.key});

  @override
  State<pr> createState() => _prState();
}

class _prState extends State<pr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Center(
                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet<void>(
                    backgroundColor: Colors.pink.shade400,
                    context: context,
                    builder: (BuildContext context) {
                      return ListView.builder(itemCount: 3 ,itemBuilder: (context, i){
                        return ListTile(
                          leading: CircleAvatar(
                            child: Image.asset("assets/n2.jpg"),
                          ),
                          title: Text("Sidhharth Solanki"),
                          subtitle: Text("Flutter developer"),
                          trailing: ElevatedButton(
                              onPressed: (){}, child:Text("Enter")),
                        );
                      });
                    },
                  );
                }, child: Text("Show Modelbottom sheet")),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'login.dart';
import 'sing_in.dart';

class home extends StatelessWidget {
  const home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(onPressed: (){
                Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
              }, icon: Icon(Icons.home,size: 30,)
              ),
              SizedBox(width: 40,)
            ],
            centerTitle: true,
        title: Text('معلش حطيت صوره عشان انجز😅'
        ,style: TextStyle(
          color: Colors.lightBlue
        ),
        ),
        backgroundColor: Colors.blueGrey,
          ),
            body: Column(children: [
      Center(
        child: Image.asset(
          "image/medrtor.jpg",
          height: 650,
          width: 900,
        ),
      )
    ])));
  }
}

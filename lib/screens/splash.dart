import 'package:flutter/material.dart';

import 'sing_in.dart';

class singin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key, onTap});
  @override
  State<Splash> createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => login()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Stack(
          children: [
            Positioned(
              left: 50,
              top: 50,
              child: Container(
                width: 70,
                height: 20,
                decoration: BoxDecoration(
                
                  shape: BoxShape.rectangle,
                  color: Colors.green.withOpacity(0.7),
                ),
              ),
            ),
            Positioned(
              right: 50,
             top: 130,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.green.withOpacity(0.4),
                ),
              ),
            ),
          
          
            Positioned(
              right: 40,
              top: 260,
              child: Container(
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.green.withOpacity(0.6),
                ),
              ),
            ),
            Positioned(
              left: 45,
              top: 220,
              child: Container(
                width: 48,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.green.withOpacity(0.6),
                ),
              ),
            ),
            Positioned(
              left: 70,
              top: 340,
              child: Container(
                width: 48,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.green.withOpacity(0.6),
                ),
              ),
            ),
              Positioned(
              right: 140,
              top: 40,
              child: Container(
                width: 48,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.green.withOpacity(0.6),
                ),
              ),
            ),
           Column(
          children: [
            SizedBox(
              height: 100,
            ),
          Center(
              child: Image.asset(
                "image/logo.png",
                height: 200,
                width: 200,
              ),
          ),
            Center(
              child: Text(
                'Whats App',
                style: TextStyle(
                  color: Color(0xff14e154),
                  fontSize: 30,
                ),
              ),
            ),
          
            SizedBox(
              height: 350,
            ),
            
                Text('this is abeast chat app')
              
          ],
        ),
          ],
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medrator_task/screens/login.dart';
import 'package:medrator_task/screens/sing_in.dart';
import 'sing_in.dart';

class ForgetPasswardScreen extends StatefulWidget {
  const ForgetPasswardScreen({super.key});

  @override
  State<ForgetPasswardScreen> createState() => _ForgetPasswardScreenState();
}

class _ForgetPasswardScreenState extends State<ForgetPasswardScreen> {
  bool _passwordVisibility = false;
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(children: [
              SizedBox(
                height: 37,
              ),
              Image.asset(
                'assets/logo.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 26,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isFocused = !_isFocused;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_isFocused ? 0 : 30),
                    border: Border.all(color: Colors.white),
                  ),
                ),
              ),
                TextField(
              obscureText: !_passwordVisibility,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisibility ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisibility = !_passwordVisibility;
                    });
                  },
                ),
                labelText: 'New Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 27,),
                  TextField(
              obscureText: !_passwordVisibility,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisibility ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisibility = !_passwordVisibility;
                    });
                  },
                ),
                labelText: 'Try New Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 29,),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
          'Continue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff4CB050),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
            ])));
  }
}

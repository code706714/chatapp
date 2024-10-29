import 'package:flutter/material.dart';
import 'package:medrator_task/screens/chats.dart';
import 'package:medrator_task/screens/sing_in.dart';



class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisibility = false;

  
  @override
  
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            SizedBox(
                height: 37,
              ),
              Image.asset(
                'asset/logo.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 26,
              ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                prefixIcon: Icon(Icons.email),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email must not be empty';
                }
                return null;
              },
            ),
            SizedBox(height: 13),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisibility
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisibility = !_passwordVisibility;
                      });
                    },
                  ),
                labelText: 'Password',
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
                ),
                prefixIcon: Icon(Icons.lock),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'password must not be empty';
                }
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chats()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xff4CB050),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('Login',  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
            ),
              SizedBox(
                height: 16,
              ),
              Row(children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Don't have an acount?  ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SingInScreen()),
                  );
              },
              child: Text('Register here',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff4CB050),

              ),
              ),
            ),
            ]
              )
          ]
        )
        )
        );
  }
}        
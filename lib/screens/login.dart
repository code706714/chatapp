import 'package:flutter/material.dart';
import 'package:medrator_task/screens/home_page.dart';
import 'sing_in.dart';

class singin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sing_in(),
    );
  }
}

class sing_in extends StatefulWidget {
  const sing_in({super.key, onTap});
  @override
  State<sing_in> createState() => _singin();
}

class _singin extends State<sing_in> {
  bool _passwardvisibility = false;
  var _name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey, 
            body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              Text(
                'Welcome ❤️$_name👋 to amr App(Mentor Task)❤️',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),

            
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Row(children: [
                      SizedBox(
                        width: 200,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('amr');
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login()));
                        },
                        child: Text(
                          'login',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 21,
                          ),
                        ),
                      ),
                      SizedBox(width: 500),
                      GestureDetector(
                        onTap: () {
                          print('amr');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => singin()));
                        },
                        child: Text(
                          'sign in',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 21,
                          ),
                        ),
                      )
                    ]),
                    SizedBox(height: 8),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          _name = value;
                        
                        });
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'your name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    
                    TextField(
                      obscureText: !_passwardvisibility,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwardvisibility
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            _passwardvisibility = !_passwardvisibility;
                          },
                        ),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    SizedBox(height: 5),
                    
                    ElevatedButton(
                      onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => home()));
                      },
                      child: Text(
                        'sing in',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

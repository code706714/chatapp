import 'package:flutter/material.dart';
import 'package:medrator_task/screens/splash.dart';

import 'package:medrator_task/screens/forgetpassward.dart';
import 'package:medrator_task/screens/sing_in.dart';
import 'package:medrator_task/screens/splash.dart';
import 'screens/home_page.dart';

void main() {
  runApp(hello());
}

class hello extends StatelessWidget {
  const hello({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}

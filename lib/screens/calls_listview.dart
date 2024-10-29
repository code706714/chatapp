import 'package:flutter/material.dart';
import 'package:medrator_task/screens/profile.dart';

class CallsListview extends StatelessWidget {
  const CallsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );}, child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('asset/image_profile.jpg'), // ضع مسار الصورة هنا
            ),
            title: Text("Amr khaled"),
            subtitle: Text("12:00 PM - اليوم"),
    )
          );
  }
}
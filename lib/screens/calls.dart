import 'package:flutter/material.dart';
import 'package:medrator_task/screens/calls_listview.dart';
import 'package:medrator_task/screens/chats.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[Calls(), CallsScreen()];

  void _onItemTapped(int index) {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex >= 0 && _selectedIndex < _widgetOptions.length
          ? _widgetOptions[_selectedIndex]
          : Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_circle),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsUp'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/image_profile.jpg'),
                ),
                SizedBox(width: 16.0),
                Text('My Status'),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Row(children: [
            SizedBox(
              width: 30,
            ),
            Text(
              'Recent updates',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ]),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return CallsListview();
              },
            ),
          ),
          Row(children: [
            SizedBox(
              width: 30,
            ),
            Text(
              'Viewed updates',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ]),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return CallsListview();
              },
            ),
          )
        ],
      ),
    );
  }
}

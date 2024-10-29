import 'package:flutter/material.dart';
import 'package:medrator_task/screens/calls.dart';
import 'package:medrator_task/screens/profile.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[ChatsScreen(), Calls()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.chat, color: Colors.white),
      ),
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
      body: _selectedIndex >= 0 && _selectedIndex < _widgetOptions.length
          ? _widgetOptions[_selectedIndex]
          : Container(), // أو أي قيمة أخرى مناسبة
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

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 0,
          endIndent: 0,
        ),
        ListTile(
          leading: Icon(Icons.account_circle, size: 50),
          title: Text('rowan'),
          subtitle: Text('# 01011873749'),
          trailing: Text('12:00 PM'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle, size: 50),
          title: Text('mohab ali'),
          subtitle: Text('# 01150453014'),
          trailing: Text('12:00 PM'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle, size: 50),
          title: Text('marwan ali'),
          subtitle: Text('# 01125727329'),
          trailing: Text('12:00 PM'),
        ),
      ],
    );
  }
}

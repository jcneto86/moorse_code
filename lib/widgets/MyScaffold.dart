import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  const MyScaffold({
    Key key,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Configurações'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("MoorseCode"),
      ),
      body: body,
    );
  }
}

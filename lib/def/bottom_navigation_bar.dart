import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello World'),
          backgroundColor: Colors.green,
        
        ),
        body: Row(children: [Text('Body 영역')],),
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.grey[300],
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.access_alarm),
              Icon(Icons.account_balance),
              Icon(Icons.account_box_sharp),
            ],
          ),
        ),
      ),
    );
  }
}

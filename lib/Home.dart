import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('머리 부분'),),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              print('ElevatedButton Click');
              Navigator.pushNamed(context, '/def');
            }, child: Text('기본 위젯')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              print('ElevatedButton Click');
              Navigator.pushNamed(context, '/rowColumn');
            }, child: Text('Row Column 사용')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              print('ElevatedButton Click');
              Navigator.pushNamed(context, '/star');
            }, child: Text('Star')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              print('ElevatedButton Click');
              Navigator.pushNamed(context, '/bottomNavigationBar');
            }, child: Text('BottomNavigationBar')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () { // 익명함수라고 함.
              print('BoxCon Click');
              Navigator.pushNamed(context, '/boxCon');
            }, child: Text('BoxContainer')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () { // 익명함수라고 함.
              print('Con2 Click');
              Navigator.pushNamed(context, '/con2');
            }, child: Text('Con2')),
          ],
        ),
      ),
      bottomNavigationBar: Text('Bottom 부분'),
    );
  }
}

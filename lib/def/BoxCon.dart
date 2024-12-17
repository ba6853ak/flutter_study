import 'package:flutter/material.dart';

// stless 위젯
class BoxCon extends StatelessWidget {
  const BoxCon({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'sunflower',
          textTheme: TextTheme(
              displayLarge: TextStyle(
            color: Colors.white10,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'perisienne',
          ))),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BoxCon',
            style: textTheme.displayLarge,
          ),
          backgroundColor: Colors.black12,
        ),
        body: _Body(),
      ),
    );
  }
}

// Java에서 접근제어자.
// public, protected, default, private

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        border: Border.all(
          width: 16,
          color: Colors.blue,
        ),
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
            colors: [Colors.red, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello'),
          Icon(Icons.star),
        ],
      ),
    );
  }
}





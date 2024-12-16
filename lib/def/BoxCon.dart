import 'package:flutter/material.dart';


// stless 위젯
class BoxCon extends StatelessWidget {
  const BoxCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('BoxCon'),),
      body: Container(
        child: Column(
          children: [
            Text('Hello'),
            Icon(Icons.star),

          ],
        ),
      ),

    );
  }
}

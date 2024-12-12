import 'package:flutter/material.dart';

class Def extends StatelessWidget {
  const Def({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Def'),),
      body: Container(
        child: Column(
          children: [
            Text('Hello World!'),
            Text('Welcome To Flutter!'),
            Icon(Icons.star),
            Image.asset('sample_image.jpg',
                width: 300.0,
                height: 300.0),
          ],
        ),
      ),
      bottomNavigationBar: Text('Bottom 부분'),
    );
  }
}

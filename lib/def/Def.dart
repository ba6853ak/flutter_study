import 'package:flutter/material.dart';

class Def extends StatelessWidget {
  const Def({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('머리 부분'),),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: null, child: null)
            ],
        ),
      ),
      bottomNavigationBar: Text('Bottom 부분'),
    );
  }
}

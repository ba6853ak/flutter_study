import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Star'),),
      body: Container(
        child: Column(
          children: [
            Row(children: [
              Icon(Icons.star,),
              Icon(Icons.star,),
              Icon(Icons.star,),
              Icon(Icons.star,),
              Icon(Icons.star,),
            ],),
            Row(children: [
              Icon(Icons.star,),
              Icon(Icons.star,),
              Icon(Icons.star,),
              Icon(Icons.star,),
            ],),
            Row(children: [
              Icon(Icons.star,),
              Icon(Icons.star,),
              Icon(Icons.star,),

            ],),
            Row(children: [
              Icon(Icons.star,),
              Icon(Icons.star,),

            ],),
            Row(children: [
              Icon(Icons.star,),
            ],),
          ],
        ),
      ),
    );
  }
}

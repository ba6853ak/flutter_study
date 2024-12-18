import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {



  int count = 0;



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("좋아요 가능"),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite),
                    Text("좋아요"),
                    SizedBox(width: 10,),
                    Text('${count}'),
                  ],
                ),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      child: FloatingActionButton(onPressed: () {

                        setState(() {
                          count = count +1;
                        });

                        print('add');

                        print(count);
                      }, child: Icon(Icons.add), ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      child: FloatingActionButton(onPressed: () {
                        print('remove');

                        setState(() {
                          count = count -1;
                        });


                        print(count);
                      }, child: Icon(Icons.remove), ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      child: FloatingActionButton(onPressed: () {
                        setState(() {
                          count = 0;
                        });

                      }, child: Icon(Icons.star), ),
                    ),


                  ],

                ),

                _Img(),
              ],

            ),
          ],
        ),
      ),
    );
  }
}

// 아랫 동네
class _Img extends StatefulWidget {
  const _Img({super.key});

  @override
  State<_Img> createState() => _ImgState();
}

class _ImgState extends State<_Img> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'sample_image.jpg',
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}



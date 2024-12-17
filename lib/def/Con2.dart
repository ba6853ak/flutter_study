import 'package:flutter/material.dart';

class Con2 extends StatelessWidget {
  const Con2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 윗 동네
                _Top(),
                // 아랫 동네
                _Img(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 윗 동네
class _Top extends StatefulWidget {
  const _Top({super.key});

  @override
  State<_Top> createState() => _TopState();
}

class _TopState extends State<_Top> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('U&I', style: TextStyle(
            fontFamily: 'parisienne',
            fontSize: 26,
            fontWeight: FontWeight.bold
          ),),
          Text('우리가 처음 만난 날', style: TextStyle(
            fontFamily: 'sunflower',
            fontSize: 26,
          ),),
          Text('2024.12.13'),
          SizedBox(height: 8,),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite, color: Colors.red,),
          ),
          SizedBox(height: 8,),
          Text('D+100', style: TextStyle(
            fontFamily: 'sunflower',
            fontSize: 26,
          ),),
        ],
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

import 'package:flutter/material.dart';

class ParentChild extends StatefulWidget {
  const ParentChild({super.key});

  @override
  State<ParentChild> createState() => _ParentChildState();
}

class _ParentChildState extends State<ParentChild> {


  int _count = 0;

  void removeCount() {
    setState(() {
      _count--;
    });
  }

  String textFind() {
    return "Main";
  }

  Container buttonArea() {
    return Container(
      margin: EdgeInsets.all(16),
      child: ElevatedButton(onPressed: () {

      }, child: Icon(Icons.arrow_back)),
    );
  }

  Text helloWorld() {
    return Text("Hello World!", style: styleText123(14.0),);
  }

  TextStyle styleText123(double outValue) {
    return TextStyle(fontSize: outValue ?? 40.0);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ParentChild'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text('count: ${_count}'), // 카운트 윗동네
                      // 카운트 버튼 영역
                      Row(
                        children: [

                          Container(
                            margin: EdgeInsets.all(16),
                            child: ElevatedButton(onPressed: () {
                              setState(() {
                                _count++;
                              });
                            }, child: Icon(Icons.add),),
                          ),

                          Container(
                            margin: EdgeInsets.all(16),
                            child: ElevatedButton(onPressed: () {
                              removeCount();
                            }, child: Icon(Icons.remove),),
                          ),

                          Container(
                            margin: EdgeInsets.all(16),
                            child: ElevatedButton(onPressed: () {
                              setState(() {
                                _count = 0;
                              });
                            }, child: Icon(Icons.arrow_back),),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                Text('아래의 영역'),
                _Child(childCnt: _count,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class _Child extends StatelessWidget {

  final int childCnt; // 상수(메모리에 저장되는 주소 값을 변경되지 못하게 함.)
  // 숫자는 변경 가능.

  const _Child({required this.childCnt, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 400,
      decoration: BoxDecoration(

        border: Border.all(width: 5, color: Colors.blueAccent),

      ),
      child: Text('부모로부터 받은 값: ${childCnt}'),
    );
  }
}

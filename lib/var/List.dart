void main() {

  List<String>? lists = [];

  lists = ['apple', 'banana'];

  for(int i=0; i <lists.length; i++){
    print('lists의 값: ${lists[i]}');
  }

  // 값이 존재한다면, 어떻게 값을 전달 가능

  var arr = [1,2,3];
  List<int> lists2 = List.from(arr);

  lists2.forEach((item){

    print('값: ${item}');

  });

  
  lists2.add(4);
  
  var a1 = lists2.map((toElement) => 1000+toElement);


  a1.forEach(print);

  final List<int> years = List.generate(30, (index) => 1984 + index);

  years.forEach(print);



}

// 배열
// 같은 타입의 집합
// 메모리상으로 연달아서 데이터가 존재.





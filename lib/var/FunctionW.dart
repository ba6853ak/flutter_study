void main() {

  print("실행 Check");

  int result = addPlus(1000, 333);
  print('result: ${result}');

  int result2 = addPlus2(n1: 10, n2: 300);
  print('result2: ${result2}');

  int result3 = addPlus2(n2: 500, n1: 10);
  print('result3: ${result3}');

  // default 함수
  int result4 = defaultPlus(200, 300);
  print('result4: ${result4}');

  int result5 = defaultPlus(1000);
  print('result5: ${result5}');

  int result6 = defaultPlus2(n1: 123, n2: 321, num3: 100);
  print('result6: ${result6}');

  int result7 = defaultPlus2(n1: 123, n2: 321);
  print('result7: ${result7}');

}

int addPlus(int n1, int n2) {
  return n1+n2;
}

// dart의 기능 required
 int addPlus2({required int n1,required int n2}) {
  return n1+n2;
 }

 int defaultPlus(int n1, [int n2 = 1000]) {
  return n1+n2;
}

int defaultPlus2({required int n1, required int n2, int num3= 0})
{
  return n1 + n2 + n1;
}

// 람다, 익명함수



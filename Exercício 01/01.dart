import 'dart:math';

main(List<String> args) {
  var n1 = 16;
  var n2 = 3;
  //a
  var res = n1%n2;
  //b
  var quo = n1/n2;
  //c
  var exp = pow(n1, n2);
  //d
  var sl = n1<<n2;
  //e
  bool testInt(int n1){
    if(n1 is int){
      return true;
    }
  }
  bool notInt(int n1){
    if(n1 is! int){
      return true;
    }
  }

  print("a) Resto da divisão: $res");
  print("b) Operador /: $quo");
  print("c) Potencia: $exp");
  print("d) Shift left: $sl");
  print(n1 is int);
  print(n2 is! int);

  if(testInt(n1)){
    print("e) é inteiro");
  }
}
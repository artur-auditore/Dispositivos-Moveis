import 'dart:io';

main(List<String> args) {
  print("Digite um valor: ");
  var v = stdin.readLineSync();
  var valor = int.parse(v);
  for (int i=1; i<=valor; i++){
    print("."*i+"$i");
  }
}
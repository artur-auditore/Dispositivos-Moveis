import 'dart:io';

main(List<String> args) {
  var salario = stdin.readLineSync();
  var sl = double.parse(salario);
  var ano1 = sl + (sl*0.07);
  var ano2 = sl + (sl*0.06);
  var ano3 = sl + (sl*0.05);

  print("Ano 1: $ano1");
  print("Ano 2: $ano2");
  print("Ano 3: $ano3");
}
import 'dart:io';

main(List<String> args) {
  var notas = 0;
  for(int i=0; i<3; i++){
    var nota = stdin.readLineSync();
    notas+=int.parse(nota);
  }
  var media = notas/3;

  if (media >=7){
    print("$media Aprovado");
  } else if (media < 4){
    print("$media Reprovado");
  } else {
    print("$media Exame final");
  }
}
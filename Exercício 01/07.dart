import 'dart:io';

bool useThing(String s){
 if(s == "s"){
   return true;
 }
}

void questions(String tv, String fone, double valorTotal){
  print("Usou a TV?: ");
  tv = stdin.readLineSync();
  if(useThing(tv)){
    valorTotal += 1.75;
  }
  print("Usou o telefone?");
  fone = stdin.readLineSync();
  if(useThing(fone)){
    valorTotal += 3.5;
  }
}

String relatorio(String typeRoom, String fone, String tv, int qtDias, double valorTotal){
  var relat = """Hospital Exemplo S/A
  Diárias : $qtDias
  Tipo quarto : 
  Diárias : RS 625,00
  Telefone : RS 0,00
  Televisão : RS 3,50
  Total : RS 628,50
  Descontos : RS 62,85
  Valor pago : RS 565,65""";
}

main(List<String> args) {
  
  var typeRoom, fone, tv;
  var valorTotal = 0.0;
  while (true){
    print("Hospital Exemplo S/A");
    print("1 - Nova Entrada\n2 - Sair");
    
    var op = stdin.readLineSync();
    if(op == "1"){
      print("Quantidade de dias: ");
      var qtdDias = stdin.readLineSync();
      print("Tipo de quarto: ");
      typeRoom = stdin.readLineSync();
      switch(typeRoom){
        case "p":{
          valorTotal += 125.0 * int.parse(qtdDias);
          questions(tv, fone, valorTotal);
          break;
        }
        case "c":{
          valorTotal += 95.0 * int.parse(qtdDias);
          questions(tv, fone, valorTotal);
          break;
        }
        case "e":{
          valorTotal += 75.0 * int.parse(qtdDias);
          questions(tv, fone, valorTotal);
          break;
        }
      }
    } else if (op == "2"){
      break;
    }
  }
}
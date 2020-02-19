import 'dart:io';

main(List<String> args) {
  var ct = 0;
  var paisA = 90000000.0;
  var paisB = 200000000.0;

  while(paisA != paisB){
    paisA += (paisA * 0.031);
    paisB += (paisB * 0.015);
    ct++;
  }
  print("$ct anos");
}